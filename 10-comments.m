#include "monty.h"
#include <string.h>

/* is_comment function to check if a line is a comment */
int is_comment(const char *line)
{
    return (line[0] == '#');
}

/* Process a line of input */
void process_line(stack_t **stack, char *line, unsigned int line_number)
{
    /* Remove newline characters from the line */
    line[strcspn(line, "\n")] = '\0';

    /* Check if the line is a comment */
    if (is_comment(line))
    {
        /* Ignore the comment line */
        return;
    }

    /* Tokenize the line and process the opcode */
    char *opcode = strtok(line, " \t\n");
    if (opcode)
    {
        if (strcmp(opcode, "push") == 0)
        {
            push(stack, line_number);
        }
        else if (strcmp(opcode, "pall") == 0)
        {
            pall(stack, line_number);
        }
        else if (strcmp(opcode, "pint") == 0)
        {
            pint(stack, line_number);
        }
        /* Add more opcode handling here */
        else
        {
            fprintf(stderr, "L%u: unknown instruction %s\n", line_number, opcode);
            exit(EXIT_FAILURE);
        }
    }
}

/* Main interpreter loop */
void interpreter_loop(FILE *file)
{
    char *line = NULL;
    size_t len = 0;
    unsigned int line_number = 0;
    stack_t *stack = NULL;

    while (getline(&line, &len, file) != -1)
    {
        line_number++;
        process_line(&stack, line, line_number);
    }

    /* Free allocated memory and close the file */
    free(line);
    free_stack(stack);
    fclose(file);
}

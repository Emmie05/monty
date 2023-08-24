#include "monty.h"
#include <stdio.h>

/* pchar opcode implementation */
void pchar(stack_t **stack, unsigned int line_number)
{
    if (*stack)
    {
        int value = (*stack)->n;
        if (value >= 0 && value <= 127) /* Check if the value is in ASCII range */
        {
            putchar(value);
            putchar('\n');
        }
        else
        {
            fprintf(stderr, "L%u: can't pchar, value out of range\n", line_number);
            exit(EXIT_FAILURE);
        }
    }
    else
    {
        fprintf(stderr, "L%u: can't pchar, stack empty\n", line_number);
        exit(EXIT_FAILURE);
    }
}

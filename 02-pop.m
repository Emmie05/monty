#include "monty.h"

/* pop opcode implementation */
void pop(stack_t **stack, unsigned int line_number)
{
    if (*stack)
    {
        stack_t *temp = *stack;
        *stack = (*stack)->next;

        /* Update the previous pointer of the new top node */
        if (*stack)
        {
            (*stack)->prev = NULL;
        }

        free(temp); /* Free the old top node */
    }
    else
    {
        fprintf(stderr, "L%u: can't pop an empty stack\n", line_number);
        exit(EXIT_FAILURE);
    }
}

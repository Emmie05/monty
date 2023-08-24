#include "monty.h"

/* pint opcode implementation */
void pint(stack_t **stack, unsigned int line_number)
{
    if (*stack)
    {
        /* Print the top value of the stack */
        printf("%d\n", (*stack)->n);
    }
    else
    {
        fprintf(stderr, "L%u: can't pint, stack empty\n", line_number);
        exit(EXIT_FAILURE);
    }
}

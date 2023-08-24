#include "monty.h"
#include <stdio.h>

/* mod opcode implementation */
void mod(stack_t **stack, unsigned int line_number)
{
    if (*stack && (*stack)->next)
    {
        if ((*stack)->n == 0)
        {
            fprintf(stderr, "L%u: division by zero\n", line_number);
            exit(EXIT_FAILURE);
        }

        int result = (*stack)->next->n % (*stack)->n;
        pop(stack, line_number); /* Remove the top element */
        (*stack)->n = result; /* Store the result in the new top element */
    }
    else
    {
        fprintf(stderr, "L%u: can't mod, stack too short\n", line_number);
        exit(EXIT_FAILURE);
    }
}

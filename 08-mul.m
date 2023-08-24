#include "monty.h"

/* mul opcode implementation */
void mul(stack_t **stack, unsigned int line_number)
{
    if (*stack && (*stack)->next)
    {
        int result = (*stack)->next->n * (*stack)->n;
        pop(stack, line_number); /* Remove the top element */
        (*stack)->n = result; /* Store the result in the new top element */
    }
    else
    {
        fprintf(stderr, "L%u: can't mul, stack too short\n", line_number);
        exit(EXIT_FAILURE);
    }
}

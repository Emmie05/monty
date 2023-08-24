#include "monty.h"

/* add opcode implementation */
void add(stack_t **stack, unsigned int line_number)
{
    if (*stack && (*stack)->next)
    {
        int sum = (*stack)->n + (*stack)->next->n;
        pop(stack, line_number); /* Remove the top element */
        (*stack)->n = sum; /* Store the sum in the new top element */
    }
    else
    {
        fprintf(stderr, "L%u: can't add, stack too short\n", line_number);
        exit(EXIT_FAILURE);
    }
}

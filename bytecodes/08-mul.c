#include "monty.h"

/**
 * mul - Multiplies the top two elements of the stack.
 * @stack: Pointer to the top of the stack
 * @line_number: Line number of the instruction
 */
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

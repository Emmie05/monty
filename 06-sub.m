#include "monty.h"

/* sub opcode implementation */
void sub(stack_t **stack, unsigned int line_number)
{
    if (*stack && (*stack)->next)
    {
        int result = (*stack)->next->n - (*stack)->n;
        pop(stack, line_number); /* Remove the top element */
        (*stack)->n = result; /* Store the result in the new top element */
    }
    else
    {
        fprintf(stderr, "L%u: can't sub, stack too short\n", line_number);
        exit(EXIT_FAILURE);
    }
}

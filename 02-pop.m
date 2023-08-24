#include "monty.h"

/**
 * pop - Removes the top element of the stack.
 * @stack: Pointer to the top of the stack
 * @line_number: Line number of the instruction
 */
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

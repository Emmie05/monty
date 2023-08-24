#include "monty.h"

/* rotl opcode implementation */
void rotl(stack_t **stack, unsigned int line_number)
{
    (void)line_number; /* Prevent unused parameter warning */

    if (*stack && (*stack)->next)
    {
        stack_t *last = *stack;
        stack_t *first = (*stack)->next;
        stack_t *current = first;

        while (current->next)
            current = current->next;

        current->next = last;
        last->prev = current;
        first->prev = NULL;
        *stack = first;
    }
}

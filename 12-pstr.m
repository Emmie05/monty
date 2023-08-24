#include "monty.h"
#include <stdio.h>

/* pstr opcode implementation */
void pstr(stack_t **stack, unsigned int line_number)
{
    (void)line_number; /* Prevent unused parameter warning */
    
    stack_t *current = *stack;

    while (current && current->n != 0 && current->n >= 0 && current->n <= 127)
    {
        putchar(current->n);
        current = current->next;
    }
    
    putchar('\n');
}

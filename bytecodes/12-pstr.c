#include "monty.h"
#include <stdio.h>

/**
 * pstr - Prints the string starting from the top of the stack.
 * @stack: Pointer to the top of the stack
 * @line_number: Line number of the instruction
 */
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

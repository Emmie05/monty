#include "monty.h"

/**
 * stack - Sets the format of the data to a stack (LIFO).
 * @stack: Pointer to the top of the stack
 * @line_number: Line number of the instruction
 */
int mode = MODE_STACK; /* Default mode is stack */

/* stack opcode implementation */
void stack_op(stack_t **stack, unsigned int line_number)
{
    (void)stack; /* Prevent unused parameter warning */
    (void)line_number; /* Prevent unused parameter warning */
    
    mode = MODE_STACK;
}

/**
 * queue - Sets the format of the data to a queue (FIFO).
 * @stack: Pointer to the top of the stack
 * @line_number: Line number of the instruction
 */
void queue_op(stack_t **stack, unsigned int line_number)
{
    (void)stack; /* Prevent unused parameter warning */
    (void)line_number; /* Prevent unused parameter warning */
    
    mode = MODE_QUEUE;
}

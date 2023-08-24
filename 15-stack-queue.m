#include "monty.h"

/* Global variable to track the mode (stack or queue) */
int mode = MODE_STACK; /* Default mode is stack */

/* stack opcode implementation */
void stack_op(stack_t **stack, unsigned int line_number)
{
    (void)stack; /* Prevent unused parameter warning */
    (void)line_number; /* Prevent unused parameter warning */
    
    mode = MODE_STACK;
}

/* queue opcode implementation */
void queue_op(stack_t **stack, unsigned int line_number)
{
    (void)stack; /* Prevent unused parameter warning */
    (void)line_number; /* Prevent unused parameter warning */
    
    mode = MODE_QUEUE;
}


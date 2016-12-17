/* compat.h for Linux and musl */

#include <stdio.h>

#define REG_STARTEND    00004

void *reallocarray(void *, size_t, size_t);
int pledge(const char *promises, const char *paths[]);

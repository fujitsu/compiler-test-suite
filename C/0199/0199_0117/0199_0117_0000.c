#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned int, signed short);
extern void (*v2) (unsigned int, signed short);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned int v5 (unsigned int, signed int);
extern unsigned int (*v6) (unsigned int, signed int);
extern signed char v7 (signed char);
extern signed char (*v8) (signed char);
extern unsigned short v11 (signed char);
extern unsigned short (*v12) (signed char);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
extern unsigned char v19 (unsigned char, unsigned short, unsigned int, signed short);
extern unsigned char (*v20) (unsigned char, unsigned short, unsigned int, signed short);
extern signed char v21 (signed char, signed short, signed int);
extern signed char (*v22) (signed char, signed short, signed int);
void v25 (unsigned short, unsigned int, signed char);
void (*v26) (unsigned short, unsigned int, signed char) = v25;
extern void v29 (signed char, unsigned char, signed short);
extern void (*v30) (signed char, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 3;
signed int v32 = -2;
unsigned int v31 = 3U;

void v25 (unsigned short v34, unsigned int v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 7;
unsigned short v38 = 6;
unsigned char v37 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned int v42;
signed short v43;
v42 = 0U + 0U;
v43 = v33 + 2;
v1 (v42, v43);
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

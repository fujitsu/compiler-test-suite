#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern void v5 (void);
extern void (*v6) (void);
signed char v7 (void);
signed char (*v8) (void) = v7;
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
signed short v15 (unsigned int, signed int, signed int, unsigned short);
signed short (*v16) (unsigned int, signed int, signed int, unsigned short) = v15;
extern unsigned short v17 (signed char, signed short, signed char, unsigned short);
extern unsigned short (*v18) (signed char, signed short, signed char, unsigned short);
extern unsigned int v19 (unsigned int, signed int);
extern unsigned int (*v20) (unsigned int, signed int);
extern signed char v21 (unsigned short);
extern signed char (*v22) (unsigned short);
extern unsigned int v25 (unsigned short);
extern unsigned int (*v26) (unsigned short);
extern signed char v27 (signed short);
extern signed char (*v28) (signed short);
extern signed char v29 (unsigned int, unsigned int);
extern signed char (*v30) (unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 2;
signed char v32 = -3;
signed short v31 = 1;

signed short v15 (unsigned int v34, signed int v35, signed int v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = -1;
signed short v39 = 1;
unsigned int v38 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (void)
{
{
for (;;) {
signed int v43 = -4;
signed int v42 = 2;
signed int v41 = 3;
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
signed short v46;
v46 = v1 ();
history[history_index++] = (int)v46;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
signed short v3 (signed int);
signed short (*v4) (signed int) = v3;
extern signed char v5 (void);
extern signed char (*v6) (void);
signed int v7 (signed int);
signed int (*v8) (signed int) = v7;
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern void v15 (signed short);
extern void (*v16) (signed short);
extern signed short v17 (signed char, signed short, signed char, unsigned int);
extern signed short (*v18) (signed char, signed short, signed char, unsigned int);
extern unsigned short v19 (unsigned int, signed short);
extern unsigned short (*v20) (unsigned int, signed short);
extern unsigned int v21 (unsigned int, unsigned char, signed int);
extern unsigned int (*v22) (unsigned int, unsigned char, signed int);
signed short v23 (void);
signed short (*v24) (void) = v23;
extern signed char v27 (signed int, signed int);
extern signed char (*v28) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 1;
unsigned short v32 = 0;
signed int v31 = 1;

signed short v23 (void)
{
{
for (;;) {
unsigned short v36 = 7;
signed char v35 = 1;
signed char v34 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed int v37)
{
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 3;
signed int v39 = -3;
unsigned short v38 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (signed int v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
signed int v44 = -1;
signed short v43 = 2;
signed int v42 = 3;
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
signed char v47;
v47 = v1 ();
history[history_index++] = (int)v47;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

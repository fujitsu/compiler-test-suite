#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed char);
extern unsigned int (*v2) (signed char);
unsigned short v3 (unsigned char, unsigned char);
unsigned short (*v4) (unsigned char, unsigned char) = v3;
extern signed short v5 (unsigned short, unsigned int, unsigned short);
extern signed short (*v6) (unsigned short, unsigned int, unsigned short);
extern unsigned int v7 (signed char, signed int);
extern unsigned int (*v8) (signed char, signed int);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern signed int v11 (signed char, signed char);
extern signed int (*v12) (signed char, signed char);
extern unsigned char v15 (unsigned char);
extern unsigned char (*v16) (unsigned char);
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed short v21 (unsigned char, signed short, signed char, signed char);
extern signed short (*v22) (unsigned char, signed short, signed char, signed char);
void v23 (unsigned short, unsigned int);
void (*v24) (unsigned short, unsigned int) = v23;
extern signed short v25 (unsigned char, unsigned int, signed char, signed char);
extern signed short (*v26) (unsigned char, unsigned int, signed char, signed char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
signed short v32 = -1;
signed char v31 = -2;

void v23 (unsigned short v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 2;
signed char v37 = 0;
signed int v36 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (void)
{
{
for (;;) {
unsigned short v41 = 3;
signed int v40 = 1;
unsigned short v39 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned char v42, unsigned char v43)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed short v46 = 1;
unsigned short v45 = 1;
unsigned char v44 = 1;
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
signed char v49;
unsigned int v50;
v49 = -2 + 1;
v50 = v1 (v49);
history[history_index++] = (int)v50;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

#include <stdio.h>
#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
signed int v3 (void);
signed int (*v4) (void) = v3;
signed int v5 (signed short, unsigned char, signed short);
signed int (*v6) (signed short, unsigned char, signed short) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned int v9 (unsigned short, unsigned int);
extern unsigned int (*v10) (unsigned short, unsigned int);
signed char v11 (signed char, signed char, unsigned int);
signed char (*v12) (signed char, signed char, unsigned int) = v11;
extern void v13 (signed int, unsigned char, unsigned char, signed int);
extern void (*v14) (signed int, unsigned char, unsigned char, signed int);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed short v17 (signed short, signed short, unsigned short);
extern signed short (*v18) (signed short, signed short, unsigned short);
extern signed char v19 (signed char, unsigned short);
extern signed char (*v20) (signed char, unsigned short);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned int v23 (unsigned short);
extern unsigned int (*v24) (unsigned short);
extern signed char v25 (unsigned int);
extern signed char (*v26) (unsigned int);
extern signed short v29 (unsigned int, signed char, unsigned char, signed int);
extern signed short (*v30) (unsigned int, signed char, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 0U;
signed short v32 = 2;
signed short v31 = 1;

signed char v11 (signed char v34, signed char v35, unsigned int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = 2;
unsigned short v38 = 4;
unsigned char v37 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed short v40, unsigned char v41, signed short v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned char v45 = 4;
unsigned short v44 = 0;
unsigned int v43 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (void)
{
{
for (;;) {
unsigned char v48 = 2;
unsigned char v47 = 1;
signed int v46 = -4;
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
v1 ();
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

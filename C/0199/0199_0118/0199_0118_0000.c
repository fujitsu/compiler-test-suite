#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned short, signed short);
extern signed int (*v2) (unsigned short, signed short);
extern signed char v5 (signed char, signed short);
extern signed char (*v6) (signed char, signed short);
void v7 (unsigned int, unsigned char, unsigned short, unsigned int);
void (*v8) (unsigned int, unsigned char, unsigned short, unsigned int) = v7;
extern signed int v9 (unsigned char);
extern signed int (*v10) (unsigned char);
signed int v11 (void);
signed int (*v12) (void) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
signed char v15 (signed short, signed int);
signed char (*v16) (signed short, signed int) = v15;
extern signed char v17 (signed char, signed int, signed int);
extern signed char (*v18) (signed char, signed int, signed int);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern void v21 (signed short, signed char, unsigned int, unsigned char);
extern void (*v22) (signed short, signed char, unsigned int, unsigned char);
extern unsigned short v23 (unsigned char, unsigned char);
extern unsigned short (*v24) (unsigned char, unsigned char);
extern unsigned char v25 (signed int, signed char, unsigned short);
extern unsigned char (*v26) (signed int, signed char, unsigned short);
extern signed int v27 (signed short, signed short, signed char, unsigned int);
extern signed int (*v28) (signed short, signed short, signed char, unsigned int);
extern void v29 (unsigned int, signed int);
extern void (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 2;
signed short v32 = 0;
signed int v31 = -3;

signed char v15 (signed short v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 2U;
signed short v37 = -3;
unsigned int v36 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (void)
{
{
for (;;) {
signed char v41 = -1;
signed int v40 = -1;
unsigned int v39 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (unsigned int v42, unsigned char v43, unsigned short v44, unsigned int v45)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
unsigned short v48 = 3;
unsigned int v47 = 2U;
unsigned short v46 = 7;
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
unsigned short v51;
signed short v52;
signed int v53;
v51 = 2 + 3;
v52 = v32 + -3;
v53 = v1 (v51, v52);
history[history_index++] = (int)v53;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

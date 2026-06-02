#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed int, signed char, unsigned short, signed short);
extern unsigned short (*v2) (signed int, signed char, unsigned short, signed short);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed int v5 (unsigned short, signed short);
extern signed int (*v6) (unsigned short, signed short);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned int v9 (unsigned short, signed short);
extern unsigned int (*v10) (unsigned short, signed short);
extern unsigned char v11 (unsigned int, unsigned int, unsigned short, signed int);
extern unsigned char (*v12) (unsigned int, unsigned int, unsigned short, signed int);
extern signed short v13 (unsigned char);
extern signed short (*v14) (unsigned char);
extern signed char v15 (unsigned int, signed int, unsigned int, signed int);
extern signed char (*v16) (unsigned int, signed int, unsigned int, signed int);
unsigned char v17 (unsigned short, unsigned short, unsigned int, unsigned char);
unsigned char (*v18) (unsigned short, unsigned short, unsigned int, unsigned char) = v17;
extern void v19 (unsigned int, signed short, unsigned int);
extern void (*v20) (unsigned int, signed short, unsigned int);
extern unsigned int v21 (unsigned short, signed short, signed char);
extern unsigned int (*v22) (unsigned short, signed short, signed char);
extern signed short v23 (unsigned short, signed short, signed short, unsigned char);
extern signed short (*v24) (unsigned short, signed short, signed short, unsigned char);
void v25 (signed int, unsigned short, unsigned int);
void (*v26) (signed int, unsigned short, unsigned int) = v25;
extern unsigned int v27 (signed short, unsigned short, unsigned short);
extern unsigned int (*v28) (signed short, unsigned short, unsigned short);
extern unsigned short v29 (signed char, signed short, signed char, unsigned short);
extern unsigned short (*v30) (signed char, signed short, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 6U;
signed char v32 = 2;
unsigned int v31 = 5U;

void v25 (signed int v34, unsigned short v35, unsigned int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 7;
unsigned char v38 = 1;
unsigned short v37 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (unsigned short v40, unsigned short v41, unsigned int v42, unsigned char v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned short v46 = 7;
signed int v45 = 1;
unsigned int v44 = 0U;
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
signed int v49;
signed char v50;
unsigned short v51;
signed short v52;
unsigned short v53;
v49 = -2 - 0;
v50 = v32 + 3;
v51 = 3 - 2;
v52 = -3 + -1;
v53 = v1 (v49, v50, v51, v52);
history[history_index++] = (int)v53;
}
} while (trace < 15);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

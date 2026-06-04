#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed int, unsigned int, signed char, signed short);
extern signed short (*v2) (signed int, unsigned int, signed char, signed short);
extern signed int v3 (signed short);
extern signed int (*v4) (signed short);
extern signed int v5 (signed char, unsigned int, signed int);
extern signed int (*v6) (signed char, unsigned int, signed int);
extern unsigned short v9 (unsigned char, signed char, unsigned short);
extern unsigned short (*v10) (unsigned char, signed char, unsigned short);
extern unsigned short v11 (unsigned char, signed short, unsigned int, unsigned int);
extern unsigned short (*v12) (unsigned char, signed short, unsigned int, unsigned int);
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
void v17 (unsigned short, unsigned short, unsigned int);
void (*v18) (unsigned short, unsigned short, unsigned int) = v17;
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern unsigned char v21 (unsigned char, unsigned short, unsigned short);
extern unsigned char (*v22) (unsigned char, unsigned short, unsigned short);
extern signed char v23 (signed char, signed int, unsigned int, unsigned int);
extern signed char (*v24) (signed char, signed int, unsigned int, unsigned int);
extern void v25 (unsigned char, signed char, signed int, unsigned short);
extern void (*v26) (unsigned char, signed char, signed int, unsigned short);
extern signed short v27 (void);
extern signed short (*v28) (void);
signed char v29 (signed char, unsigned short, unsigned int, signed int);
signed char (*v30) (signed char, unsigned short, unsigned int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 3;
signed short v32 = -3;
unsigned char v31 = 5;

signed char v29 (signed char v34, unsigned short v35, unsigned int v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 1U;
unsigned int v39 = 4U;
signed char v38 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (unsigned short v41, unsigned short v42, unsigned int v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned short v46 = 7;
signed char v45 = -4;
unsigned short v44 = 3;
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
unsigned int v50;
signed char v51;
signed short v52;
signed short v53;
v49 = 0 - -4;
v50 = 6U + 2U;
v51 = 3 - -3;
v52 = -3 + v32;
v53 = v1 (v49, v50, v51, v52);
history[history_index++] = (int)v53;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

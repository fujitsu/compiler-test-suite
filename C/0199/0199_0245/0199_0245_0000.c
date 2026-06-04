#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed char, unsigned short, signed short, signed char);
extern signed short (*v2) (signed char, unsigned short, signed short, signed char);
extern signed int v3 (unsigned short, signed int, unsigned char, unsigned char);
extern signed int (*v4) (unsigned short, signed int, unsigned char, unsigned char);
extern unsigned short v5 (unsigned char, unsigned short, signed short, signed short);
extern unsigned short (*v6) (unsigned char, unsigned short, signed short, signed short);
extern unsigned short v7 (signed char, unsigned char, signed char, unsigned int);
extern unsigned short (*v8) (signed char, unsigned char, signed char, unsigned int);
extern signed char v9 (unsigned int, unsigned int, unsigned short);
extern signed char (*v10) (unsigned int, unsigned int, unsigned short);
extern unsigned char v11 (unsigned int);
extern unsigned char (*v12) (unsigned int);
extern unsigned int v15 (signed char, signed int, signed int);
extern unsigned int (*v16) (signed char, signed int, signed int);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned int v19 (signed short, unsigned short, signed int);
extern unsigned int (*v20) (signed short, unsigned short, signed int);
extern signed char v21 (unsigned short);
extern signed char (*v22) (unsigned short);
signed char v23 (signed int, unsigned short, unsigned char, unsigned short);
signed char (*v24) (signed int, unsigned short, unsigned char, unsigned short) = v23;
extern signed short v25 (void);
extern signed short (*v26) (void);
void v27 (signed short, signed int, signed short);
void (*v28) (signed short, signed int, signed short) = v27;
extern unsigned int v29 (signed short, unsigned int);
extern unsigned int (*v30) (signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 0;
signed short v32 = -1;
unsigned short v31 = 7;

void v27 (signed short v34, signed int v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = 0;
unsigned char v38 = 4;
signed char v37 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (signed int v40, unsigned short v41, unsigned char v42, unsigned short v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned short v46 = 5;
unsigned int v45 = 5U;
signed char v44 = -3;
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
unsigned short v50;
signed short v51;
signed char v52;
signed short v53;
v49 = 2 - 0;
v50 = 1 + v31;
v51 = 3 + v32;
v52 = -4 - 2;
v53 = v1 (v49, v50, v51, v52);
history[history_index++] = (int)v53;
}
} while (trace < 11);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed short);
extern signed char (*v2) (signed short);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
void v5 (unsigned char, unsigned short);
void (*v6) (unsigned char, unsigned short) = v5;
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern void v9 (signed int, signed short, unsigned int);
extern void (*v10) (signed int, signed short, unsigned int);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned char v13 (signed short, signed short, signed short);
extern unsigned char (*v14) (signed short, signed short, signed short);
extern signed short v15 (unsigned char);
extern signed short (*v16) (unsigned char);
extern unsigned short v17 (signed int, unsigned int, signed short);
extern unsigned short (*v18) (signed int, unsigned int, signed short);
extern void v19 (unsigned char, signed short, signed int);
extern void (*v20) (unsigned char, signed short, signed int);
extern unsigned int v21 (signed char);
extern unsigned int (*v22) (signed char);
signed int v23 (unsigned int, unsigned int, unsigned short);
signed int (*v24) (unsigned int, unsigned int, unsigned short) = v23;
extern signed short v25 (unsigned int, signed short);
extern signed short (*v26) (unsigned int, signed short);
extern unsigned short v27 (unsigned short);
extern unsigned short (*v28) (unsigned short);
extern unsigned int v29 (signed char, signed short);
extern unsigned int (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -1;
signed short v32 = -2;
unsigned char v31 = 0;

signed int v23 (unsigned int v34, unsigned int v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = -1;
unsigned int v38 = 1U;
unsigned int v37 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned char v40, unsigned short v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned short v44 = 1;
signed int v43 = -4;
unsigned short v42 = 6;
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
signed short v47;
signed char v48;
v47 = v32 - -4;
v48 = v1 (v47);
history[history_index++] = (int)v48;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

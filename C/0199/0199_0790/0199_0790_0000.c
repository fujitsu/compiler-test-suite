#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned int, unsigned short, unsigned char);
extern signed int (*v2) (unsigned int, unsigned short, unsigned char);
extern signed char v3 (unsigned short, unsigned char);
extern signed char (*v4) (unsigned short, unsigned char);
extern unsigned int v5 (signed short, unsigned char, unsigned char);
extern unsigned int (*v6) (signed short, unsigned char, unsigned char);
extern unsigned char v7 (unsigned char, signed short, unsigned int);
extern unsigned char (*v8) (unsigned char, signed short, unsigned int);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
signed char v13 (unsigned short, signed short);
signed char (*v14) (unsigned short, signed short) = v13;
extern signed int v15 (signed short, signed int, signed char, signed short);
extern signed int (*v16) (signed short, signed int, signed char, signed short);
extern unsigned char v17 (signed short);
extern unsigned char (*v18) (signed short);
extern signed short v19 (signed char, signed int);
extern signed short (*v20) (signed char, signed int);
signed int v21 (signed char, unsigned char);
signed int (*v22) (signed char, unsigned char) = v21;
extern unsigned int v23 (signed int);
extern unsigned int (*v24) (signed int);
extern void v25 (unsigned int, unsigned int, unsigned int);
extern void (*v26) (unsigned int, unsigned int, unsigned int);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned char v29 (signed int, signed short);
extern unsigned char (*v30) (signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 2;
unsigned short v32 = 0;
signed short v31 = -2;

signed int v21 (signed char v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = 1;
unsigned int v37 = 1U;
signed char v36 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned short v39, signed short v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned int v43 = 5U;
signed char v42 = -3;
signed char v41 = -1;
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
unsigned int v46;
unsigned short v47;
unsigned char v48;
signed int v49;
v46 = 2U + 4U;
v47 = 5 - v33;
v48 = 0 - 6;
v49 = v1 (v46, v47, v48);
history[history_index++] = (int)v49;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

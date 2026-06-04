#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned short);
extern unsigned int (*v2) (unsigned short);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
extern unsigned char v7 (unsigned int, signed char, signed short);
extern unsigned char (*v8) (unsigned int, signed char, signed short);
extern signed int v9 (signed short);
extern signed int (*v10) (signed short);
unsigned char v11 (signed char, signed int, signed int);
unsigned char (*v12) (signed char, signed int, signed int) = v11;
extern signed short v15 (signed int, signed int, unsigned char);
extern signed short (*v16) (signed int, signed int, unsigned char);
extern signed char v17 (signed int, signed char, signed char, signed int);
extern signed char (*v18) (signed int, signed char, signed char, signed int);
extern unsigned short v21 (signed char, signed char);
extern unsigned short (*v22) (signed char, signed char);
extern void v23 (void);
extern void (*v24) (void);
extern signed int v25 (signed int, unsigned short, signed int);
extern signed int (*v26) (signed int, unsigned short, signed int);
signed short v27 (unsigned char, signed char);
signed short (*v28) (unsigned char, signed char) = v27;
extern signed int v29 (unsigned char, unsigned char);
extern signed int (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 0;
signed short v32 = 0;
signed int v31 = 0;

signed short v27 (unsigned char v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = -3;
signed char v37 = -2;
signed int v36 = -1;
trace++;
switch (trace)
{
case 5: 
return 0;
case 11: 
return 3;
default: abort ();
}
}
}
}

unsigned char v11 (signed char v39, signed int v40, signed int v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed char v44 = 2;
unsigned int v43 = 4U;
unsigned int v42 = 1U;
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
unsigned short v47;
unsigned int v48;
v47 = 4 - 7;
v48 = v1 (v47);
history[history_index++] = (int)v48;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

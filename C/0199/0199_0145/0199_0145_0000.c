#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned int, unsigned int);
extern signed char (*v2) (unsigned int, unsigned int);
extern signed short v3 (unsigned char, signed short, signed char);
extern signed short (*v4) (unsigned char, signed short, signed char);
extern signed int v5 (signed int, unsigned int);
extern signed int (*v6) (signed int, unsigned int);
extern unsigned int v7 (unsigned int, signed int, signed short, signed int);
extern unsigned int (*v8) (unsigned int, signed int, signed short, signed int);
extern signed int v9 (signed int, signed short, unsigned char);
extern signed int (*v10) (signed int, signed short, unsigned char);
extern void v11 (void);
extern void (*v12) (void);
extern signed char v13 (void);
extern signed char (*v14) (void);
signed int v15 (signed int, unsigned char, unsigned short);
signed int (*v16) (signed int, unsigned char, unsigned short) = v15;
extern signed char v17 (signed int, unsigned int, unsigned short, unsigned char);
extern signed char (*v18) (signed int, unsigned int, unsigned short, unsigned char);
extern unsigned short v19 (unsigned char);
extern unsigned short (*v20) (unsigned char);
extern void v21 (signed short, unsigned short, unsigned char, unsigned int);
extern void (*v22) (signed short, unsigned short, unsigned char, unsigned int);
unsigned short v23 (unsigned char, signed char);
unsigned short (*v24) (unsigned char, signed char) = v23;
extern signed short v27 (unsigned int, unsigned int);
extern signed short (*v28) (unsigned int, unsigned int);
extern unsigned int v29 (unsigned int, signed int, signed char, signed short);
extern unsigned int (*v30) (unsigned int, signed int, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -2;
unsigned char v32 = 2;
signed int v31 = -4;

unsigned short v23 (unsigned char v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned char v38 = 0;
unsigned short v37 = 4;
unsigned char v36 = 2;
trace++;
switch (trace)
{
case 6: 
return 3;
default: abort ();
}
}
}
}

signed int v15 (signed int v39, unsigned char v40, unsigned short v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = 3;
unsigned int v43 = 5U;
unsigned short v42 = 2;
trace++;
switch (trace)
{
case 11: 
return v39;
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
unsigned int v47;
unsigned int v48;
signed char v49;
v47 = 4U + 5U;
v48 = 4U - 7U;
v49 = v1 (v47, v48);
history[history_index++] = (int)v49;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

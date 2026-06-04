#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern void v3 (void);
extern void (*v4) (void);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern void v7 (signed short, signed int);
extern void (*v8) (signed short, signed int);
extern signed int v9 (unsigned char, unsigned int, unsigned char);
extern signed int (*v10) (unsigned char, unsigned int, unsigned char);
extern signed short v11 (unsigned short, unsigned char, unsigned char);
extern signed short (*v12) (unsigned short, unsigned char, unsigned char);
extern signed short v13 (signed int, unsigned char, signed short, unsigned char);
extern signed short (*v14) (signed int, unsigned char, signed short, unsigned char);
signed short v15 (signed short);
signed short (*v16) (signed short) = v15;
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
signed int v19 (signed int, unsigned char);
signed int (*v20) (signed int, unsigned char) = v19;
extern void v21 (unsigned int, unsigned short, signed short);
extern void (*v22) (unsigned int, unsigned short, signed short);
extern signed short v23 (signed char, signed short, unsigned short, unsigned char);
extern signed short (*v24) (signed char, signed short, unsigned short, unsigned char);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern unsigned char v29 (signed short, unsigned short, unsigned short, unsigned int);
extern unsigned char (*v30) (signed short, unsigned short, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 2;
signed short v32 = -2;
signed char v31 = 2;

signed int v19 (signed int v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed int v38 = 2;
unsigned char v37 = 4;
signed char v36 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (signed short v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
unsigned int v42 = 7U;
signed char v41 = 3;
unsigned short v40 = 6;
trace++;
switch (trace)
{
case 3: 
return v39;
case 7: 
return -3;
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
signed char v45;
v45 = v1 ();
history[history_index++] = (int)v45;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned char v5 (unsigned char, signed char, signed short);
extern unsigned char (*v6) (unsigned char, signed char, signed short);
extern unsigned int v7 (signed short, unsigned int);
extern unsigned int (*v8) (signed short, unsigned int);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed short v11 (signed char);
extern signed short (*v12) (signed char);
extern signed short v13 (signed short, signed int, unsigned int, signed int);
extern signed short (*v14) (signed short, signed int, unsigned int, signed int);
extern signed char v15 (signed short, unsigned char);
extern signed char (*v16) (signed short, unsigned char);
extern unsigned char v17 (unsigned short, unsigned char);
extern unsigned char (*v18) (unsigned short, unsigned char);
extern unsigned short v21 (unsigned int);
extern unsigned short (*v22) (unsigned int);
unsigned short v23 (unsigned char, signed short, signed char);
unsigned short (*v24) (unsigned char, signed short, signed char) = v23;
extern unsigned short v25 (signed short, signed char);
extern unsigned short (*v26) (signed short, signed char);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed char v29 (unsigned int, signed char);
extern signed char (*v30) (unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 2;
signed int v32 = 0;
unsigned char v31 = 5;

unsigned short v23 (unsigned char v34, signed short v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 7;
signed int v38 = 3;
signed int v37 = -1;
trace++;
switch (trace)
{
case 5: 
return 2;
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
signed short v42;
v42 = v1 ();
history[history_index++] = (int)v42;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

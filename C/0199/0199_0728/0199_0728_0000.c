#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned short);
extern signed int (*v2) (unsigned short);
extern signed short v3 (signed short, unsigned char);
extern signed short (*v4) (signed short, unsigned char);
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
extern unsigned char v7 (signed char, signed char, unsigned char);
extern unsigned char (*v8) (signed char, signed char, unsigned char);
extern unsigned char v9 (unsigned char, signed short);
extern unsigned char (*v10) (unsigned char, signed short);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned int v15 (unsigned char);
extern unsigned int (*v16) (unsigned char);
extern void v17 (unsigned int);
extern void (*v18) (unsigned int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed char v23 (unsigned short, signed short);
extern signed char (*v24) (unsigned short, signed short);
signed int v25 (signed int, signed char);
signed int (*v26) (signed int, signed char) = v25;
unsigned int v27 (unsigned char, signed char, signed short, signed char);
unsigned int (*v28) (unsigned char, signed char, signed short, signed char) = v27;
extern unsigned int v29 (signed int, signed char);
extern unsigned int (*v30) (signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 2;
signed char v32 = 1;
signed int v31 = 1;

unsigned int v27 (unsigned char v34, signed char v35, signed short v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = 1;
signed int v39 = 3;
signed int v38 = 0;
trace++;
switch (trace)
{
case 6: 
return 5U;
case 8: 
return 0U;
default: abort ();
}
}
}
}

signed int v25 (signed int v41, signed char v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned short v45 = 0;
unsigned short v44 = 5;
signed short v43 = -2;
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
unsigned short v48;
signed int v49;
v48 = 0 + 0;
v49 = v1 (v48);
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

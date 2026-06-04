#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned short);
extern unsigned short (*v2) (signed short, unsigned short);
unsigned int v3 (signed int);
unsigned int (*v4) (signed int) = v3;
extern signed int v5 (signed char, unsigned short, signed short, unsigned char);
extern signed int (*v6) (signed char, unsigned short, signed short, unsigned char);
extern unsigned short v7 (unsigned int);
extern unsigned short (*v8) (unsigned int);
extern signed int v9 (unsigned int, unsigned int, signed char, signed int);
extern signed int (*v10) (unsigned int, unsigned int, signed char, signed int);
extern void v11 (signed char, signed int, unsigned short);
extern void (*v12) (signed char, signed int, unsigned short);
extern signed char v13 (signed char, signed short);
extern signed char (*v14) (signed char, signed short);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern unsigned char v17 (signed char, unsigned short);
extern unsigned char (*v18) (signed char, unsigned short);
extern signed char v19 (signed char);
extern signed char (*v20) (signed char);
extern unsigned short v21 (unsigned char);
extern unsigned short (*v22) (unsigned char);
void v23 (unsigned short, unsigned int, signed char);
void (*v24) (unsigned short, unsigned int, signed char) = v23;
unsigned short v25 (unsigned short);
unsigned short (*v26) (unsigned short) = v25;
extern unsigned short v27 (signed int);
extern unsigned short (*v28) (signed int);
extern signed short v29 (unsigned short, unsigned char);
extern signed short (*v30) (unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 3;
signed char v32 = 2;
unsigned char v31 = 3;

unsigned short v25 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = -1;
signed char v36 = -2;
unsigned short v35 = 7;
trace++;
switch (trace)
{
case 4: 
return v35;
case 6: 
return v34;
case 10: 
return 0;
default: abort ();
}
}
}
}

void v23 (unsigned short v38, unsigned int v39, signed char v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed char v43 = -1;
signed char v42 = -4;
unsigned char v41 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed int v44)
{
history[history_index++] = (int)v44;
{
for (;;) {
unsigned short v47 = 3;
signed int v46 = 2;
unsigned short v45 = 2;
trace++;
switch (trace)
{
case 1: 
return 5U;
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
signed short v50;
unsigned short v51;
unsigned short v52;
v50 = 0 - 3;
v51 = 1 + 3;
v52 = v1 (v50, v51);
history[history_index++] = (int)v52;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

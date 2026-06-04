#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned short, unsigned int, unsigned char, unsigned short);
extern unsigned int (*v2) (unsigned short, unsigned int, unsigned char, unsigned short);
extern signed short v3 (unsigned int, signed char, unsigned short);
extern signed short (*v4) (unsigned int, signed char, unsigned short);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned int v7 (unsigned char, signed int);
extern unsigned int (*v8) (unsigned char, signed int);
extern signed short v9 (unsigned char, signed char, unsigned short);
extern signed short (*v10) (unsigned char, signed char, unsigned short);
extern signed short v11 (unsigned short, unsigned short);
extern signed short (*v12) (unsigned short, unsigned short);
signed int v13 (void);
signed int (*v14) (void) = v13;
extern signed short v15 (signed char, signed int, signed short, unsigned int);
extern signed short (*v16) (signed char, signed int, signed short, unsigned int);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed short v19 (signed char, signed char);
extern signed short (*v20) (signed char, signed char);
extern unsigned short v21 (signed int);
extern unsigned short (*v22) (signed int);
extern signed char v23 (signed char, unsigned char, signed short);
extern signed char (*v24) (signed char, unsigned char, signed short);
signed char v25 (signed short, unsigned int);
signed char (*v26) (signed short, unsigned int) = v25;
extern signed int v27 (void);
extern signed int (*v28) (void);
void v29 (signed char, unsigned short);
void (*v30) (signed char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 3U;
unsigned char v32 = 2;
signed short v31 = 3;

void v29 (signed char v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 7U;
unsigned char v37 = 1;
signed int v36 = 2;
trace++;
switch (trace)
{
case 1: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

signed char v25 (signed short v39, unsigned int v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned int v43 = 3U;
signed char v42 = 1;
signed char v41 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (void)
{
{
for (;;) {
signed char v46 = -4;
signed short v45 = -3;
unsigned char v44 = 5;
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
unsigned short v49;
unsigned int v50;
unsigned char v51;
unsigned short v52;
unsigned int v53;
v49 = 6 - 3;
v50 = 1U + 7U;
v51 = 1 + 6;
v52 = 7 - 6;
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

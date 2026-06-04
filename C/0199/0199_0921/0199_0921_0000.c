#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned short, unsigned char, unsigned int);
extern unsigned char (*v2) (unsigned short, unsigned char, unsigned int);
extern unsigned char v3 (unsigned int, signed char, signed char, signed short);
extern unsigned char (*v4) (unsigned int, signed char, signed char, signed short);
signed short v5 (void);
signed short (*v6) (void) = v5;
extern signed int v7 (signed int, signed char, unsigned int);
extern signed int (*v8) (signed int, signed char, unsigned int);
extern unsigned char v9 (signed int, unsigned short, signed short, signed char);
extern unsigned char (*v10) (signed int, unsigned short, signed short, signed char);
extern signed char v11 (signed char);
extern signed char (*v12) (signed char);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern void v15 (unsigned int, unsigned int, unsigned char, signed char);
extern void (*v16) (unsigned int, unsigned int, unsigned char, signed char);
extern unsigned int v17 (unsigned char, signed int);
extern unsigned int (*v18) (unsigned char, signed int);
extern signed short v19 (signed short);
extern signed short (*v20) (signed short);
extern signed char v21 (void);
extern signed char (*v22) (void);
void v23 (unsigned short, unsigned char, unsigned short, unsigned int);
void (*v24) (unsigned short, unsigned char, unsigned short, unsigned int) = v23;
extern unsigned char v25 (unsigned short, signed char);
extern unsigned char (*v26) (unsigned short, signed char);
extern signed char v27 (unsigned short, unsigned short, signed short, signed char);
extern signed char (*v28) (unsigned short, unsigned short, signed short, signed char);
unsigned short v29 (unsigned short);
unsigned short (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
unsigned int v32 = 4U;
unsigned short v31 = 2;

unsigned short v29 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = 2;
unsigned int v36 = 5U;
signed short v35 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (unsigned short v38, unsigned char v39, unsigned short v40, unsigned int v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed char v44 = 1;
signed short v43 = 0;
signed short v42 = -2;
trace++;
switch (trace)
{
case 3: 
return;
case 5: 
return;
case 9: 
return;
default: abort ();
}
}
}
}

signed short v5 (void)
{
{
for (;;) {
unsigned char v47 = 5;
signed int v46 = -4;
unsigned short v45 = 3;
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
unsigned short v50;
unsigned char v51;
unsigned int v52;
unsigned char v53;
v50 = v31 + v33;
v51 = 6 + 3;
v52 = 0U - v32;
v53 = v1 (v50, v51, v52);
history[history_index++] = (int)v53;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

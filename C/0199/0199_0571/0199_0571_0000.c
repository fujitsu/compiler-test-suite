#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned short);
extern unsigned int (*v2) (unsigned short);
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
extern signed char v5 (signed short);
extern signed char (*v6) (signed short);
extern void v7 (unsigned char, unsigned int, signed short);
extern void (*v8) (unsigned char, unsigned int, signed short);
unsigned int v9 (signed char, unsigned short, unsigned int, signed short);
unsigned int (*v10) (signed char, unsigned short, unsigned int, signed short) = v9;
signed int v11 (signed short, signed char);
signed int (*v12) (signed short, signed char) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
extern signed char v19 (unsigned char, unsigned int);
extern signed char (*v20) (unsigned char, unsigned int);
extern unsigned short v23 (signed int, unsigned int, signed char);
extern unsigned short (*v24) (signed int, unsigned int, signed char);
extern signed short v25 (signed int);
extern signed short (*v26) (signed int);
void v27 (void);
void (*v28) (void) = v27;
extern signed short v29 (unsigned short, signed char, unsigned char);
extern signed short (*v30) (unsigned short, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 0U;
signed char v32 = -3;
unsigned int v31 = 0U;

void v27 (void)
{
{
for (;;) {
signed char v36 = 1;
unsigned char v35 = 4;
unsigned short v34 = 1;
trace++;
switch (trace)
{
case 7: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

signed int v11 (signed short v37, signed char v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
signed char v41 = 0;
signed int v40 = 1;
signed short v39 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed char v42, unsigned short v43, unsigned int v44, signed short v45)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed char v48 = 0;
unsigned short v47 = 1;
signed int v46 = 2;
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
unsigned short v51;
unsigned int v52;
v51 = 0 + 6;
v52 = v1 (v51);
history[history_index++] = (int)v52;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

#include <stdio.h>
#include <stdlib.h>
static signed int v1 (signed char);
static signed int (*v2) (signed char) = v1;
extern void v5 (unsigned char, unsigned int, unsigned char, signed int);
extern void (*v6) (unsigned char, unsigned int, unsigned char, signed int);
unsigned char v7 (unsigned char, unsigned int);
unsigned char (*v8) (unsigned char, unsigned int) = v7;
extern unsigned char v9 (signed short, unsigned short);
extern unsigned char (*v10) (signed short, unsigned short);
extern signed int v11 (signed char, signed char);
extern signed int (*v12) (signed char, signed char);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned char v17 (signed char);
extern unsigned char (*v18) (signed char);
extern unsigned short v19 (unsigned char, unsigned short, unsigned char);
extern unsigned short (*v20) (unsigned char, unsigned short, unsigned char);
extern unsigned int v21 (signed int, signed int);
extern unsigned int (*v22) (signed int, signed int);
void v23 (void);
void (*v24) (void) = v23;
extern unsigned int v25 (unsigned short, signed char, signed int);
extern unsigned int (*v26) (unsigned short, signed char, signed int);
extern unsigned short v27 (signed short, unsigned short, signed char);
extern unsigned short (*v28) (signed short, unsigned short, signed char);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 3;
signed int v32 = -4;
unsigned int v31 = 5U;

void v23 (void)
{
{
for (;;) {
signed short v36 = 0;
signed int v35 = 3;
signed char v34 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned char v37, unsigned int v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
signed int v41 = -3;
signed char v40 = 2;
unsigned short v39 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v1 (signed char v42)
{
history[history_index++] = (int)v42;
{
for (;;) {
unsigned short v45 = 6;
unsigned int v44 = 2U;
unsigned int v43 = 7U;
trace++;
switch (trace)
{
case 0: 
{
signed int v46;
signed int v47;
unsigned int v48;
v46 = 1 - 3;
v47 = -3 - 1;
v48 = v21 (v46, v47);
history[history_index++] = (int)v48;
}
break;
case 16: 
return -1;
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
signed char v51;
signed int v52;
v51 = 1 + 3;
v52 = v1 (v51);
history[history_index++] = (int)v52;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

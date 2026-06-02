#include <stdio.h>
#include <stdlib.h>
static signed char v1 (signed int, signed short, signed short);
static signed char (*v2) (signed int, signed short, signed short) = v1;
extern signed short v3 (signed int, signed int, signed int, unsigned char);
extern signed short (*v4) (signed int, signed int, signed int, unsigned char);
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
extern signed char v7 (signed int, signed short, signed char);
extern signed char (*v8) (signed int, signed short, signed char);
extern signed int v9 (unsigned char);
extern signed int (*v10) (unsigned char);
extern unsigned int v11 (signed short, signed short);
extern unsigned int (*v12) (signed short, signed short);
extern signed char v13 (signed short);
extern signed char (*v14) (signed short);
extern void v15 (unsigned short);
extern void (*v16) (unsigned short);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed short v19 (signed short, signed char, unsigned int, unsigned int);
extern signed short (*v20) (signed short, signed char, unsigned int, unsigned int);
extern unsigned short v21 (signed int, signed char, signed short);
extern unsigned short (*v22) (signed int, signed char, signed short);
unsigned char v23 (unsigned short, signed int);
unsigned char (*v24) (unsigned short, signed int) = v23;
extern void v25 (signed short, signed char, unsigned int);
extern void (*v26) (signed short, signed char, unsigned int);
extern void v27 (unsigned char, unsigned short);
extern void (*v28) (unsigned char, unsigned short);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -3;
signed int v32 = -4;
signed int v31 = 3;

unsigned char v23 (unsigned short v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned char v38 = 3;
unsigned short v37 = 4;
unsigned short v36 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (void)
{
{
for (;;) {
signed int v41 = 2;
unsigned short v40 = 0;
unsigned int v39 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v1 (signed int v42, signed short v43, signed short v44)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned char v47 = 7;
signed int v46 = 0;
signed short v45 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v48;
unsigned short v49;
v48 = 2 + v47;
v49 = 4 - 5;
v27 (v48, v49);
}
break;
case 2: 
return 3;
case 3: 
return 2;
case 4: 
{
signed short v50;
signed short v51;
unsigned int v52;
v50 = v45 - v45;
v51 = v44 + v45;
v52 = v11 (v50, v51);
history[history_index++] = (int)v52;
}
break;
case 14: 
return 3;
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
signed int v55;
signed short v56;
signed short v57;
signed char v58;
v55 = 3 - v32;
v56 = 0 - v33;
v57 = -1 - v33;
v58 = v1 (v55, v56, v57);
history[history_index++] = (int)v58;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

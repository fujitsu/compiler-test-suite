#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned char, unsigned short);
extern unsigned short (*v2) (unsigned char, unsigned short);
extern unsigned short v3 (signed short, signed int, unsigned char);
extern unsigned short (*v4) (signed short, signed int, unsigned char);
extern unsigned char v5 (unsigned int);
extern unsigned char (*v6) (unsigned int);
extern unsigned short v7 (unsigned short);
extern unsigned short (*v8) (unsigned short);
extern unsigned char v9 (signed int, signed short, signed short);
extern unsigned char (*v10) (signed int, signed short, signed short);
extern signed short v11 (signed char, signed short, signed int, signed int);
extern signed short (*v12) (signed char, signed short, signed int, signed int);
extern void v13 (unsigned short, signed int, unsigned char, unsigned int);
extern void (*v14) (unsigned short, signed int, unsigned char, unsigned int);
extern signed short v15 (signed int, unsigned int, unsigned int, signed short);
extern signed short (*v16) (signed int, unsigned int, unsigned int, signed short);
extern unsigned short v17 (unsigned short);
extern unsigned short (*v18) (unsigned short);
extern signed char v19 (signed char, unsigned int, unsigned int, signed int);
extern signed char (*v20) (signed char, unsigned int, unsigned int, signed int);
unsigned short v21 (void);
unsigned short (*v22) (void) = v21;
extern signed char v23 (unsigned int, signed short);
extern signed char (*v24) (unsigned int, signed short);
signed int v25 (unsigned int);
signed int (*v26) (unsigned int) = v25;
static signed short v27 (void);
static signed short (*v28) (void) = v27;
extern void v29 (unsigned short);
extern void (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 2;
signed short v32 = 0;
unsigned char v31 = 7;

static signed short v27 (void)
{
{
for (;;) {
signed short v36 = -3;
signed short v35 = -4;
signed int v34 = 0;
trace++;
switch (trace)
{
case 9: 
return v35;
case 11: 
return v36;
default: abort ();
}
}
}
}

signed int v25 (unsigned int v37)
{
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 3;
signed int v39 = 1;
signed char v38 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (void)
{
{
for (;;) {
signed char v43 = 2;
signed int v42 = 2;
signed short v41 = -1;
trace++;
switch (trace)
{
case 8: 
{
signed short v44;
v44 = v27 ();
history[history_index++] = (int)v44;
}
break;
case 10: 
{
signed short v45;
v45 = v27 ();
history[history_index++] = (int)v45;
}
break;
case 12: 
return 1;
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
unsigned char v48;
unsigned short v49;
unsigned short v50;
v48 = 6 + v31;
v49 = v33 + 2;
v50 = v1 (v48, v49);
history[history_index++] = (int)v50;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

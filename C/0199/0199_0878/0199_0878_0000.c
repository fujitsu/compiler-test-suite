#include <stdio.h>
#include <stdlib.h>
static signed char v1 (unsigned char);
static signed char (*v2) (unsigned char) = v1;
extern unsigned int v3 (unsigned short, unsigned short);
extern unsigned int (*v4) (unsigned short, unsigned short);
extern signed short v5 (void);
extern signed short (*v6) (void);
signed char v7 (unsigned char, signed char);
signed char (*v8) (unsigned char, signed char) = v7;
extern signed int v9 (unsigned int, signed short);
extern signed int (*v10) (unsigned int, signed short);
extern void v11 (signed char, signed short, signed short);
extern void (*v12) (signed char, signed short, signed short);
extern unsigned char v13 (unsigned char);
extern unsigned char (*v14) (unsigned char);
unsigned short v15 (void);
unsigned short (*v16) (void) = v15;
extern unsigned int v17 (signed char, signed short);
extern unsigned int (*v18) (signed char, signed short);
extern void v19 (unsigned char, unsigned char);
extern void (*v20) (unsigned char, unsigned char);
extern signed char v21 (unsigned int, unsigned int, unsigned int, unsigned int);
extern signed char (*v22) (unsigned int, unsigned int, unsigned int, unsigned int);
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
extern unsigned int v25 (signed short, unsigned char, unsigned char);
extern unsigned int (*v26) (signed short, unsigned char, unsigned char);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned short v29 (unsigned short);
extern unsigned short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 0;
unsigned int v32 = 2U;
signed short v31 = -1;

unsigned int v23 (void)
{
{
for (;;) {
signed char v36 = -2;
unsigned short v35 = 4;
unsigned char v34 = 3;
trace++;
switch (trace)
{
case 11: 
return 7U;
default: abort ();
}
}
}
}

unsigned short v15 (void)
{
{
for (;;) {
unsigned char v39 = 4;
signed int v38 = 0;
unsigned short v37 = 6;
trace++;
switch (trace)
{
case 5: 
return v37;
case 7: 
return 2;
default: abort ();
}
}
}
}

signed char v7 (unsigned char v40, signed char v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 6U;
unsigned short v43 = 5;
signed int v42 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v1 (unsigned char v45)
{
history[history_index++] = (int)v45;
{
for (;;) {
signed char v48 = -2;
unsigned short v47 = 5;
signed short v46 = -2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v49;
unsigned short v50;
unsigned int v51;
v49 = 3 + v47;
v50 = v47 - 0;
v51 = v3 (v49, v50);
history[history_index++] = (int)v51;
}
break;
case 16: 
return v48;
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
unsigned char v54;
signed char v55;
v54 = 0 + 6;
v55 = v1 (v54);
history[history_index++] = (int)v55;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

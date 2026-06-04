#include <stdio.h>
#include <stdlib.h>
static signed int v1 (signed short, signed short, signed int, unsigned char);
static signed int (*v2) (signed short, signed short, signed int, unsigned char) = v1;
extern void v3 (void);
extern void (*v4) (void);
extern void v5 (signed char);
extern void (*v6) (signed char);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned char v9 (unsigned char, signed int, unsigned int, unsigned short);
extern unsigned char (*v10) (unsigned char, signed int, unsigned int, unsigned short);
signed char v11 (void);
signed char (*v12) (void) = v11;
unsigned short v13 (void);
unsigned short (*v14) (void) = v13;
extern unsigned int v15 (unsigned char, signed short);
extern unsigned int (*v16) (unsigned char, signed short);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned char v21 (unsigned char);
extern unsigned char (*v22) (unsigned char);
extern unsigned short v25 (unsigned char, unsigned short, unsigned char, signed short);
extern unsigned short (*v26) (unsigned char, unsigned short, unsigned char, signed short);
signed int v27 (void);
signed int (*v28) (void) = v27;
signed char v29 (unsigned short, unsigned int);
signed char (*v30) (unsigned short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -4;
unsigned char v32 = 3;
signed short v31 = 0;

signed char v29 (unsigned short v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = 0;
unsigned char v37 = 7;
signed short v36 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v27 (void)
{
{
for (;;) {
unsigned short v41 = 4;
signed int v40 = -3;
unsigned short v39 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (void)
{
{
for (;;) {
unsigned int v44 = 7U;
signed int v43 = -3;
unsigned char v42 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (void)
{
{
for (;;) {
unsigned short v47 = 0;
signed char v46 = -3;
signed int v45 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v1 (signed short v48, signed short v49, signed int v50, unsigned char v51)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed char v54 = 2;
unsigned char v53 = 1;
signed char v52 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed char v55;
v55 = 2 + v54;
v5 (v55);
}
break;
case 14: 
return 0;
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
signed short v58;
signed short v59;
signed int v60;
unsigned char v61;
signed int v62;
v58 = v33 + -2;
v59 = v31 + v31;
v60 = 2 + 2;
v61 = v32 - v32;
v62 = v1 (v58, v59, v60, v61);
history[history_index++] = (int)v62;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

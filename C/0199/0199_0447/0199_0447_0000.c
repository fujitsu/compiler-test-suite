#include <stdio.h>
#include <stdlib.h>
static signed char v1 (void);
static signed char (*v2) (void) = v1;
extern void v3 (unsigned short, unsigned short, unsigned short, unsigned char);
extern void (*v4) (unsigned short, unsigned short, unsigned short, unsigned char);
extern unsigned int v5 (unsigned int, unsigned int, unsigned short, unsigned short);
extern unsigned int (*v6) (unsigned int, unsigned int, unsigned short, unsigned short);
signed char v7 (void);
signed char (*v8) (void) = v7;
extern signed short v9 (unsigned short, signed short, unsigned char, unsigned int);
extern signed short (*v10) (unsigned short, signed short, unsigned char, unsigned int);
signed char v11 (unsigned char);
signed char (*v12) (unsigned char) = v11;
signed int v13 (signed char, unsigned short, signed int);
signed int (*v14) (signed char, unsigned short, signed int) = v13;
extern signed int v15 (signed short, unsigned int, signed char);
extern signed int (*v16) (signed short, unsigned int, signed char);
extern unsigned short v17 (unsigned short, unsigned short, unsigned short);
extern unsigned short (*v18) (unsigned short, unsigned short, unsigned short);
extern signed int v19 (unsigned short);
extern signed int (*v20) (unsigned short);
extern unsigned short v21 (unsigned short, unsigned short, signed char);
extern unsigned short (*v22) (unsigned short, unsigned short, signed char);
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
static signed char v29 (void);
static signed char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
signed int v32 = -3;
signed char v31 = 3;

static signed char v29 (void)
{
{
for (;;) {
signed short v36 = 0;
signed int v35 = 2;
signed int v34 = -2;
trace++;
switch (trace)
{
case 10: 
return 3;
default: abort ();
}
}
}
}

signed int v13 (signed char v37, unsigned short v38, signed int v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned char v42 = 4;
unsigned int v41 = 6U;
unsigned int v40 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (unsigned char v43)
{
history[history_index++] = (int)v43;
{
for (;;) {
unsigned int v46 = 6U;
unsigned char v45 = 0;
signed int v44 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (void)
{
{
for (;;) {
unsigned int v49 = 2U;
unsigned short v48 = 3;
signed int v47 = -2;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v50;
v50 = v27 ();
history[history_index++] = (int)v50;
}
break;
case 9: 
{
signed char v51;
v51 = v29 ();
history[history_index++] = (int)v51;
}
break;
case 11: 
return -2;
default: abort ();
}
}
}
}

static signed char v1 (void)
{
{
for (;;) {
unsigned short v54 = 2;
signed char v53 = -1;
unsigned char v52 = 5;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v55;
unsigned short v56;
unsigned short v57;
unsigned short v58;
v55 = 3 - 2;
v56 = 1 + 7;
v57 = v54 - v54;
v58 = v17 (v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 14: 
return -3;
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
signed char v61;
v61 = v1 ();
history[history_index++] = (int)v61;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

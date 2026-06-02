#include <stdio.h>
#include <stdlib.h>
static signed int v1 (void);
static signed int (*v2) (void) = v1;
signed short v3 (unsigned short, unsigned char, signed short);
signed short (*v4) (unsigned short, unsigned char, signed short) = v3;
extern signed short v5 (void);
extern signed short (*v6) (void);
unsigned int v7 (signed short, unsigned char);
unsigned int (*v8) (signed short, unsigned char) = v7;
extern void v9 (signed short, unsigned int);
extern void (*v10) (signed short, unsigned int);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned int v17 (signed char, unsigned int);
extern unsigned int (*v18) (signed char, unsigned int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern void v21 (unsigned int, unsigned char);
extern void (*v22) (unsigned int, unsigned char);
extern signed short v23 (signed int);
extern signed short (*v24) (signed int);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed int v27 (signed int, unsigned char);
extern signed int (*v28) (signed int, unsigned char);
extern void v29 (unsigned char);
extern void (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 1;
unsigned short v32 = 1;
signed short v31 = 0;

unsigned int v7 (signed short v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = 0;
signed short v37 = -2;
signed char v36 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned short v39, unsigned char v40, signed short v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed char v44 = 0;
unsigned short v43 = 0;
signed int v42 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v1 (void)
{
{
for (;;) {
signed int v47 = 0;
unsigned int v46 = 6U;
unsigned short v45 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v48;
v48 = 3 - 6;
v29 (v48);
}
break;
case 2: 
{
unsigned char v49;
v49 = 7 + 6;
v29 (v49);
}
break;
case 4: 
{
signed short v50;
unsigned int v51;
v50 = -1 + 0;
v51 = v46 - v46;
v9 (v50, v51);
}
break;
case 14: 
return 2;
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
signed int v54;
v54 = v1 ();
history[history_index++] = (int)v54;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

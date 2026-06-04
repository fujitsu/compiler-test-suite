#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed short v3 (unsigned char, unsigned char, unsigned char);
extern signed short (*v4) (unsigned char, unsigned char, unsigned char);
extern signed char v5 (unsigned int, signed char, unsigned char);
extern signed char (*v6) (unsigned int, signed char, unsigned char);
unsigned int v7 (signed int);
unsigned int (*v8) (signed int) = v7;
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed int v11 (signed short, unsigned short);
extern signed int (*v12) (signed short, unsigned short);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern signed int v15 (unsigned int);
extern signed int (*v16) (unsigned int);
extern unsigned int v17 (signed int, unsigned short, unsigned char);
extern unsigned int (*v18) (signed int, unsigned short, unsigned char);
extern signed char v19 (signed char, unsigned char);
extern signed char (*v20) (signed char, unsigned char);
static unsigned int v21 (unsigned short);
static unsigned int (*v22) (unsigned short) = v21;
extern void v23 (unsigned int);
extern void (*v24) (unsigned int);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed char v29 (unsigned short, signed short, signed int);
extern signed char (*v30) (unsigned short, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 5;
unsigned char v32 = 4;
unsigned int v31 = 0U;

static unsigned int v21 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = 3;
signed int v36 = -1;
unsigned int v35 = 1U;
trace++;
switch (trace)
{
case 4: 
return v35;
case 6: 
return 7U;
default: abort ();
}
}
}
}

unsigned char v13 (void)
{
{
for (;;) {
unsigned char v40 = 1;
signed int v39 = -4;
signed char v38 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (signed int v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
signed int v44 = 3;
unsigned short v43 = 2;
signed int v42 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v45;
v45 = 5U - 4U;
v23 (v45);
}
break;
case 3: 
{
unsigned short v46;
unsigned int v47;
v46 = 6 - v43;
v47 = v21 (v46);
history[history_index++] = (int)v47;
}
break;
case 5: 
{
unsigned short v48;
unsigned int v49;
v48 = v43 - v43;
v49 = v21 (v48);
history[history_index++] = (int)v49;
}
break;
case 7: 
return 6U;
case 9: 
{
unsigned int v50;
v50 = 0U + 5U;
v23 (v50);
}
break;
case 11: 
return 5U;
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
signed short v53;
v53 = v1 ();
history[history_index++] = (int)v53;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

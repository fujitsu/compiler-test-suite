#include <stdio.h>
#include <stdlib.h>
static signed short v1 (void);
static signed short (*v2) (void) = v1;
extern unsigned int v3 (unsigned short, unsigned int);
extern unsigned int (*v4) (unsigned short, unsigned int);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed short v7 (signed int, unsigned char, signed short);
extern signed short (*v8) (signed int, unsigned char, signed short);
extern unsigned short v9 (unsigned short, unsigned short, signed short);
extern unsigned short (*v10) (unsigned short, unsigned short, signed short);
extern unsigned int v11 (unsigned int, signed char);
extern unsigned int (*v12) (unsigned int, signed char);
extern void v13 (signed char, signed char);
extern void (*v14) (signed char, signed char);
extern unsigned short v15 (unsigned int, unsigned char);
extern unsigned short (*v16) (unsigned int, unsigned char);
extern void v17 (unsigned char);
extern void (*v18) (unsigned char);
extern signed short v19 (unsigned short);
extern signed short (*v20) (unsigned short);
extern signed char v21 (unsigned int, signed short, signed char);
extern signed char (*v22) (unsigned int, signed short, signed char);
signed int v23 (signed char, signed int);
signed int (*v24) (signed char, signed int) = v23;
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
unsigned int v27 (unsigned char, unsigned int, signed short, signed char);
unsigned int (*v28) (unsigned char, unsigned int, signed short, signed char) = v27;
extern unsigned int v29 (unsigned short);
extern unsigned int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 3;
signed char v32 = -4;
unsigned short v31 = 6;

unsigned int v27 (unsigned char v34, unsigned int v35, signed short v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = -3;
signed short v39 = -2;
unsigned short v38 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (signed char v41, signed int v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed char v45 = -3;
signed short v44 = 1;
signed int v43 = -4;
trace++;
switch (trace)
{
case 6: 
{
unsigned short v46;
v46 = v25 ();
history[history_index++] = (int)v46;
}
break;
case 14: 
return v43;
default: abort ();
}
}
}
}

static signed short v1 (void)
{
{
for (;;) {
signed int v49 = 0;
signed short v48 = 3;
unsigned int v47 = 5U;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v50;
signed short v51;
v50 = 3 - 7;
v51 = v19 (v50);
history[history_index++] = (int)v51;
}
break;
case 2: 
{
unsigned short v52;
unsigned int v53;
unsigned int v54;
v52 = 0 + 4;
v53 = 7U - 5U;
v54 = v3 (v52, v53);
history[history_index++] = (int)v54;
}
break;
case 18: 
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
signed short v57;
v57 = v1 ();
history[history_index++] = (int)v57;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

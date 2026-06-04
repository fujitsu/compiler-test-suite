#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned char, signed int);
extern unsigned char (*v2) (unsigned int, unsigned char, signed int);
extern unsigned short v3 (signed short, unsigned char);
extern unsigned short (*v4) (signed short, unsigned char);
unsigned int v5 (signed short);
unsigned int (*v6) (signed short) = v5;
extern signed char v7 (signed int, unsigned int);
extern signed char (*v8) (signed int, unsigned int);
extern unsigned char v9 (signed int);
extern unsigned char (*v10) (signed int);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern unsigned int v13 (unsigned char, unsigned short, unsigned short);
extern unsigned int (*v14) (unsigned char, unsigned short, unsigned short);
extern signed int v15 (unsigned char, signed char);
extern signed int (*v16) (unsigned char, signed char);
extern void v17 (unsigned short, signed short);
extern void (*v18) (unsigned short, signed short);
signed short v19 (signed short, unsigned short, unsigned int);
signed short (*v20) (signed short, unsigned short, unsigned int) = v19;
extern signed char v21 (unsigned short, signed short);
extern signed char (*v22) (unsigned short, signed short);
extern unsigned int v23 (signed char, signed int, signed char);
extern unsigned int (*v24) (signed char, signed int, signed char);
extern unsigned short v25 (unsigned short, signed char, unsigned short, unsigned int);
extern unsigned short (*v26) (unsigned short, signed char, unsigned short, unsigned int);
extern unsigned short v27 (unsigned int);
extern unsigned short (*v28) (unsigned int);
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 2;
signed char v32 = 1;
signed int v31 = -1;

void v29 (void)
{
{
for (;;) {
unsigned int v36 = 0U;
unsigned int v35 = 3U;
unsigned int v34 = 0U;
trace++;
switch (trace)
{
case 2: 
return;
case 5: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

signed short v19 (signed short v37, unsigned short v38, unsigned int v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned char v42 = 4;
signed char v41 = 0;
signed short v40 = -3;
trace++;
switch (trace)
{
case 1: 
{
v29 ();
}
break;
case 3: 
{
unsigned int v43;
unsigned short v44;
v43 = 0U - v39;
v44 = v27 (v43);
history[history_index++] = (int)v44;
}
break;
case 8: 
{
unsigned int v45;
unsigned short v46;
v45 = v39 - v39;
v46 = v27 (v45);
history[history_index++] = (int)v46;
}
break;
case 12: 
return v40;
case 15: 
return 2;
default: abort ();
}
}
}
}

unsigned int v5 (signed short v47)
{
history[history_index++] = (int)v47;
{
for (;;) {
unsigned int v50 = 6U;
unsigned char v49 = 7;
unsigned char v48 = 4;
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
unsigned int v53;
unsigned char v54;
signed int v55;
unsigned char v56;
v53 = 7U - 0U;
v54 = 3 + 0;
v55 = 1 - v31;
v56 = v1 (v53, v54, v55);
history[history_index++] = (int)v56;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

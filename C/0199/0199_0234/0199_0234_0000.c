#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
signed char v3 (signed char, signed char);
signed char (*v4) (signed char, signed char) = v3;
unsigned char v5 (signed short, signed int, unsigned char);
unsigned char (*v6) (signed short, signed int, unsigned char) = v5;
void v7 (signed char);
void (*v8) (signed char) = v7;
extern unsigned char v9 (signed char, unsigned int);
extern unsigned char (*v10) (signed char, unsigned int);
extern void v13 (unsigned char, unsigned int, signed short, signed short);
extern void (*v14) (unsigned char, unsigned int, signed short, signed short);
extern signed char v15 (void);
extern signed char (*v16) (void);
unsigned int v17 (void);
unsigned int (*v18) (void) = v17;
extern unsigned char v19 (signed char, unsigned char, signed int);
extern unsigned char (*v20) (signed char, unsigned char, signed int);
extern unsigned char v21 (signed short, unsigned char, unsigned int);
extern unsigned char (*v22) (signed short, unsigned char, unsigned int);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned short v25 (signed char, signed char, unsigned short);
extern unsigned short (*v26) (signed char, signed char, unsigned short);
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
extern signed char v29 (signed int, unsigned char, signed short);
extern signed char (*v30) (signed int, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 0;
unsigned short v32 = 6;
signed char v31 = 1;

unsigned int v17 (void)
{
{
for (;;) {
signed int v36 = -4;
unsigned char v35 = 1;
unsigned int v34 = 3U;
trace++;
switch (trace)
{
case 2: 
return 7U;
case 4: 
{
unsigned short v37;
signed short v38;
v37 = 1 - 3;
v38 = v27 (v37);
history[history_index++] = (int)v38;
}
break;
case 12: 
return 1U;
default: abort ();
}
}
}
}

void v7 (signed char v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
unsigned short v42 = 5;
unsigned char v41 = 1;
signed short v40 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (signed short v43, signed int v44, unsigned char v45)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
unsigned int v48 = 3U;
signed char v47 = 1;
signed char v46 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed char v49, signed char v50)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed short v53 = -2;
signed int v52 = -2;
unsigned int v51 = 5U;
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
unsigned int v56;
v56 = v1 ();
history[history_index++] = (int)v56;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

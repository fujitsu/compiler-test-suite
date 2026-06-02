#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed char v3 (void);
extern signed char (*v4) (void);
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
void v9 (signed short, signed char);
void (*v10) (signed short, signed char) = v9;
extern signed int v11 (signed short, signed char, signed char);
extern signed int (*v12) (signed short, signed char, signed char);
extern unsigned char v13 (signed int, unsigned short, signed short, unsigned int);
extern unsigned char (*v14) (signed int, unsigned short, signed short, unsigned int);
extern signed short v15 (signed short, signed short);
extern signed short (*v16) (signed short, signed short);
extern signed int v19 (signed short, unsigned short, signed short);
extern signed int (*v20) (signed short, unsigned short, signed short);
unsigned int v21 (unsigned char, unsigned short);
unsigned int (*v22) (unsigned char, unsigned short) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned short v29 (unsigned char, unsigned short);
extern unsigned short (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 2;
unsigned char v32 = 0;
signed short v31 = 3;

unsigned int v21 (unsigned char v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned char v38 = 7;
unsigned char v37 = 5;
signed int v36 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed short v39, signed char v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned char v43 = 3;
unsigned char v42 = 3;
signed char v41 = -4;
trace++;
switch (trace)
{
case 1: 
{
signed short v44;
signed char v45;
signed char v46;
signed int v47;
v44 = -3 + v39;
v45 = v40 + 2;
v46 = v40 + 2;
v47 = v11 (v44, v45, v46);
history[history_index++] = (int)v47;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

unsigned int v7 (void)
{
{
for (;;) {
unsigned char v50 = 5;
unsigned short v49 = 5;
unsigned int v48 = 5U;
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
signed short v53 = 1;
unsigned int v52 = 7U;
signed short v51 = 1;
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
unsigned short v56;
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

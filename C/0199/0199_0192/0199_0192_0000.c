#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed short v3 (unsigned short, unsigned int, signed int);
extern signed short (*v4) (unsigned short, unsigned int, signed int);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern void v7 (void);
extern void (*v8) (void);
void v9 (unsigned int, unsigned short, signed short);
void (*v10) (unsigned int, unsigned short, signed short) = v9;
signed char v11 (void);
signed char (*v12) (void) = v11;
extern unsigned char v13 (unsigned int, signed char, signed short);
extern unsigned char (*v14) (unsigned int, signed char, signed short);
signed int v15 (unsigned char);
signed int (*v16) (unsigned char) = v15;
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
extern unsigned int v21 (unsigned short, unsigned int, signed short);
extern unsigned int (*v22) (unsigned short, unsigned int, signed short);
unsigned int v23 (signed char, unsigned char, signed short, signed int);
unsigned int (*v24) (signed char, unsigned char, signed short, signed int) = v23;
extern void v27 (void);
extern void (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 2;
unsigned int v32 = 1U;
signed short v31 = -2;

unsigned int v23 (signed char v34, unsigned char v35, signed short v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = -3;
unsigned char v39 = 3;
unsigned char v38 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (unsigned char v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
signed char v44 = -1;
signed int v43 = -2;
unsigned char v42 = 4;
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
unsigned char v47 = 1;
signed char v46 = 2;
signed char v45 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned int v48, unsigned short v49, signed short v50)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed int v53 = 1;
signed short v52 = -4;
unsigned short v51 = 6;
trace++;
switch (trace)
{
case 4: 
{
v27 ();
}
break;
case 6: 
return;
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
signed char v56;
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

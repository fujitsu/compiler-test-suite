#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned char);
extern signed int (*v2) (unsigned char);
unsigned int v3 (unsigned char, unsigned char, signed short);
unsigned int (*v4) (unsigned char, unsigned char, signed short) = v3;
extern signed char v5 (unsigned char, unsigned char);
extern signed char (*v6) (unsigned char, unsigned char);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned int v9 (signed char, unsigned char, unsigned char);
extern unsigned int (*v10) (signed char, unsigned char, unsigned char);
extern signed short v11 (unsigned int);
extern signed short (*v12) (unsigned int);
extern unsigned int v13 (unsigned char);
extern unsigned int (*v14) (unsigned char);
extern void v15 (signed int, signed int, signed int);
extern void (*v16) (signed int, signed int, signed int);
extern unsigned int v17 (unsigned int);
extern unsigned int (*v18) (unsigned int);
extern void v19 (unsigned int, signed int);
extern void (*v20) (unsigned int, signed int);
extern unsigned int v23 (signed int, unsigned char, signed int);
extern unsigned int (*v24) (signed int, unsigned char, signed int);
void v25 (unsigned short, signed int, unsigned char);
void (*v26) (unsigned short, signed int, unsigned char) = v25;
extern void v27 (unsigned short, unsigned int);
extern void (*v28) (unsigned short, unsigned int);
signed int v29 (signed char, signed short, signed short);
signed int (*v30) (signed char, signed short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 5;
signed int v32 = 2;
signed int v31 = -3;

signed int v29 (signed char v34, signed short v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 4;
unsigned int v38 = 5U;
unsigned char v37 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v25 (unsigned short v40, signed int v41, unsigned char v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned short v45 = 0;
signed short v44 = 0;
signed int v43 = -2;
trace++;
switch (trace)
{
case 4: 
return;
case 6: 
return;
default: abort ();
}
}
}
}

unsigned int v3 (unsigned char v46, unsigned char v47, signed short v48)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
signed int v51 = 0;
signed char v50 = 2;
signed short v49 = -2;
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

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned char v54;
signed int v55;
v54 = v33 + 5;
v55 = v1 (v54);
history[history_index++] = (int)v55;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

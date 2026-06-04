#include <stdio.h>
#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed int v3 (unsigned char, unsigned char, signed int);
extern signed int (*v4) (unsigned char, unsigned char, signed int);
extern signed int v5 (unsigned int);
extern signed int (*v6) (unsigned int);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
signed short v9 (signed int);
signed short (*v10) (signed int) = v9;
signed int v11 (signed int, unsigned int);
signed int (*v12) (signed int, unsigned int) = v11;
extern unsigned int v13 (unsigned short, unsigned int, signed int);
extern unsigned int (*v14) (unsigned short, unsigned int, signed int);
extern signed int v15 (unsigned char, signed char, signed int, signed int);
extern signed int (*v16) (unsigned char, signed char, signed int, signed int);
extern unsigned char v17 (signed char, signed int, unsigned int);
extern unsigned char (*v18) (signed char, signed int, unsigned int);
extern signed short v19 (unsigned int, unsigned short, signed short);
extern signed short (*v20) (unsigned int, unsigned short, signed short);
extern unsigned short v21 (signed short, unsigned int, signed short);
extern unsigned short (*v22) (signed short, unsigned int, signed short);
extern unsigned char v23 (signed short, unsigned char, signed char);
extern unsigned char (*v24) (signed short, unsigned char, signed char);
extern unsigned int v25 (signed int, unsigned short, unsigned short);
extern unsigned int (*v26) (signed int, unsigned short, unsigned short);
unsigned char v27 (unsigned char);
unsigned char (*v28) (unsigned char) = v27;
void v29 (unsigned short, unsigned short);
void (*v30) (unsigned short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
signed int v32 = -1;
signed short v31 = 2;

void v29 (unsigned short v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 2;
unsigned short v37 = 0;
signed char v36 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v27 (unsigned char v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
signed char v42 = -1;
signed int v41 = 0;
signed char v40 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed int v43, unsigned int v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed short v47 = 2;
unsigned char v46 = 7;
signed char v45 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (signed int v48)
{
history[history_index++] = (int)v48;
{
for (;;) {
unsigned int v51 = 5U;
signed char v50 = 0;
unsigned short v49 = 2;
trace++;
switch (trace)
{
case 5: 
return 1;
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
v1 ();
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

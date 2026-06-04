#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned int, signed int, signed int, unsigned char);
extern unsigned short (*v2) (unsigned int, signed int, signed int, unsigned char);
unsigned char v3 (signed short, unsigned int, signed char);
unsigned char (*v4) (signed short, unsigned int, signed char) = v3;
extern signed int v5 (signed short, unsigned short, unsigned int);
extern signed int (*v6) (signed short, unsigned short, unsigned int);
extern void v9 (signed char);
extern void (*v10) (signed char);
signed char v11 (unsigned int);
signed char (*v12) (unsigned int) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned int v17 (unsigned short, signed char);
extern unsigned int (*v18) (unsigned short, signed char);
extern unsigned short v19 (unsigned char, signed int);
extern unsigned short (*v20) (unsigned char, signed int);
extern unsigned short v23 (signed short);
extern unsigned short (*v24) (signed short);
void v25 (signed short);
void (*v26) (signed short) = v25;
extern unsigned short v27 (unsigned int, signed char, signed int);
extern unsigned short (*v28) (unsigned int, signed char, signed int);
unsigned short v29 (signed int);
unsigned short (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 5U;
unsigned char v32 = 1;
unsigned int v31 = 5U;

unsigned short v29 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 3U;
signed short v36 = -1;
signed int v35 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v25 (signed short v38)
{
history[history_index++] = (int)v38;
{
for (;;) {
unsigned int v41 = 5U;
signed int v40 = -4;
signed int v39 = -2;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}

signed char v11 (unsigned int v42)
{
history[history_index++] = (int)v42;
{
for (;;) {
signed short v45 = 1;
unsigned short v44 = 1;
unsigned short v43 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed short v46, unsigned int v47, signed char v48)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
signed int v51 = 0;
unsigned short v50 = 3;
signed int v49 = -4;
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
unsigned int v54;
signed int v55;
signed int v56;
unsigned char v57;
unsigned short v58;
v54 = 2U - v33;
v55 = -4 - -1;
v56 = 1 + 3;
v57 = v32 - 7;
v58 = v1 (v54, v55, v56, v57);
history[history_index++] = (int)v58;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

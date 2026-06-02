#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned int, unsigned int, unsigned char);
extern signed char (*v2) (unsigned int, unsigned int, unsigned char);
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
void v5 (signed char);
void (*v6) (signed char) = v5;
extern signed short v7 (unsigned short, signed short, unsigned int);
extern signed short (*v8) (unsigned short, signed short, unsigned int);
extern signed char v9 (unsigned int);
extern signed char (*v10) (unsigned int);
extern unsigned short v11 (unsigned int, signed char);
extern unsigned short (*v12) (unsigned int, signed char);
extern unsigned int v13 (unsigned int);
extern unsigned int (*v14) (unsigned int);
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
extern unsigned int v17 (signed int, unsigned char, signed int, unsigned int);
extern unsigned int (*v18) (signed int, unsigned char, signed int, unsigned int);
unsigned char v19 (signed short, unsigned char, signed short);
unsigned char (*v20) (signed short, unsigned char, signed short) = v19;
extern signed int v21 (signed short, signed int);
extern signed int (*v22) (signed short, signed int);
unsigned short v23 (void);
unsigned short (*v24) (void) = v23;
extern signed int v25 (signed int, signed int, signed char, signed short);
extern signed int (*v26) (signed int, signed int, signed char, signed short);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern signed int v29 (unsigned int, signed int);
extern signed int (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 0;
signed int v32 = 1;
unsigned char v31 = 1;

unsigned short v23 (void)
{
{
for (;;) {
signed short v36 = 3;
signed int v35 = -4;
unsigned short v34 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (signed short v37, unsigned char v38, signed short v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned short v42 = 4;
signed char v41 = 2;
signed short v40 = -3;
trace++;
switch (trace)
{
case 9: 
{
signed int v43;
signed int v44;
signed char v45;
signed short v46;
signed int v47;
v43 = -4 - 0;
v44 = 3 - 0;
v45 = -2 + -4;
v46 = v39 + 0;
v47 = v25 (v43, v44, v45, v46);
history[history_index++] = (int)v47;
}
break;
case 11: 
return 2;
default: abort ();
}
}
}
}

void v5 (signed char v48)
{
history[history_index++] = (int)v48;
{
for (;;) {
signed int v51 = 2;
signed int v50 = 1;
unsigned char v49 = 0;
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
unsigned int v55;
unsigned char v56;
signed char v57;
v54 = 0U - 0U;
v55 = 5U + 6U;
v56 = v31 - v31;
v57 = v1 (v54, v55, v56);
history[history_index++] = (int)v57;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

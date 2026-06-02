#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed char, signed short, unsigned short);
extern unsigned short (*v2) (signed char, signed short, unsigned short);
extern signed int v3 (unsigned char, unsigned short, unsigned int);
extern signed int (*v4) (unsigned char, unsigned short, unsigned int);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned short v9 (signed char, signed char, signed short, unsigned short);
extern unsigned short (*v10) (signed char, signed char, signed short, unsigned short);
unsigned int v11 (unsigned short, signed char);
unsigned int (*v12) (unsigned short, signed char) = v11;
extern unsigned char v13 (signed char, signed short, signed int, signed short);
extern unsigned char (*v14) (signed char, signed short, signed int, signed short);
void v15 (signed short, unsigned char);
void (*v16) (signed short, unsigned char) = v15;
extern signed char v17 (unsigned short, unsigned char, signed int, unsigned short);
extern signed char (*v18) (unsigned short, unsigned char, signed int, unsigned short);
extern unsigned char v19 (signed int);
extern unsigned char (*v20) (signed int);
extern unsigned char v21 (signed char, unsigned short, unsigned char, signed char);
extern unsigned char (*v22) (signed char, unsigned short, unsigned char, signed char);
extern void v23 (unsigned char, unsigned short);
extern void (*v24) (unsigned char, unsigned short);
extern unsigned int v25 (unsigned char, signed short, signed short, unsigned char);
extern unsigned int (*v26) (unsigned char, signed short, signed short, unsigned char);
extern signed short v29 (unsigned char, signed short, signed int, unsigned char);
extern signed short (*v30) (unsigned char, signed short, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 6;
unsigned char v32 = 0;
unsigned char v31 = 2;

void v15 (signed short v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = -1;
unsigned short v37 = 4;
signed char v36 = 1;
trace++;
switch (trace)
{
case 4: 
return;
default: abort ();
}
}
}
}

unsigned int v11 (unsigned short v39, signed char v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned short v43 = 1;
unsigned short v42 = 2;
signed int v41 = 1;
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
signed char v46;
signed short v47;
unsigned short v48;
unsigned short v49;
v46 = 0 + 0;
v47 = 0 - 1;
v48 = v33 + 7;
v49 = v1 (v46, v47, v48);
history[history_index++] = (int)v49;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

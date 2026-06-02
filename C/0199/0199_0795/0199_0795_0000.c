#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed short, unsigned char, unsigned short, unsigned int);
extern signed int (*v2) (signed short, unsigned char, unsigned short, unsigned int);
unsigned char v5 (unsigned short, unsigned int, unsigned char, unsigned char);
unsigned char (*v6) (unsigned short, unsigned int, unsigned char, unsigned char) = v5;
extern unsigned short v7 (signed char, unsigned short);
extern unsigned short (*v8) (signed char, unsigned short);
extern signed short v9 (void);
extern signed short (*v10) (void);
void v11 (unsigned int, signed int, signed short);
void (*v12) (unsigned int, signed int, signed short) = v11;
extern signed short v15 (unsigned int, unsigned char, unsigned char);
extern signed short (*v16) (unsigned int, unsigned char, unsigned char);
extern unsigned int v17 (signed short, signed char, signed short, signed short);
extern unsigned int (*v18) (signed short, signed char, signed short, signed short);
unsigned char v19 (unsigned char, unsigned int, signed int, unsigned short);
unsigned char (*v20) (unsigned char, unsigned int, signed int, unsigned short) = v19;
extern void v21 (signed char, signed int, signed int);
extern void (*v22) (signed char, signed int, signed int);
extern signed int v23 (signed short, unsigned short);
extern signed int (*v24) (signed short, unsigned short);
extern signed char v25 (unsigned int, unsigned char);
extern signed char (*v26) (unsigned int, unsigned char);
extern signed char v27 (signed int);
extern signed char (*v28) (signed int);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 6U;
signed int v32 = -2;
unsigned short v31 = 3;

unsigned char v19 (unsigned char v34, unsigned int v35, signed int v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = 2;
unsigned short v39 = 3;
signed short v38 = -2;
trace++;
switch (trace)
{
case 9: 
return v34;
case 11: 
return 2;
default: abort ();
}
}
}
}

void v11 (unsigned int v41, signed int v42, signed short v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned short v46 = 3;
unsigned int v45 = 7U;
signed short v44 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned short v47, unsigned int v48, unsigned char v49, unsigned char v50)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
unsigned int v53 = 4U;
unsigned char v52 = 0;
unsigned short v51 = 1;
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
signed short v56;
unsigned char v57;
unsigned short v58;
unsigned int v59;
signed int v60;
v56 = -2 - 2;
v57 = 3 - 1;
v58 = v31 + 5;
v59 = v33 + v33;
v60 = v1 (v56, v57, v58, v59);
history[history_index++] = (int)v60;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

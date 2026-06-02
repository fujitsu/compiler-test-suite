#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed int, signed short, signed short);
extern signed short (*v2) (signed int, signed short, signed short);
extern unsigned char v3 (unsigned int, signed int);
extern unsigned char (*v4) (unsigned int, signed int);
extern unsigned char v5 (signed char, unsigned short, unsigned char);
extern unsigned char (*v6) (signed char, unsigned short, unsigned char);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
extern void v11 (signed short, unsigned short, unsigned char, unsigned char);
extern void (*v12) (signed short, unsigned short, unsigned char, unsigned char);
unsigned short v13 (unsigned short, unsigned char, signed char);
unsigned short (*v14) (unsigned short, unsigned char, signed char) = v13;
extern signed int v15 (void);
extern signed int (*v16) (void);
signed short v17 (signed short, unsigned short, signed short);
signed short (*v18) (signed short, unsigned short, signed short) = v17;
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
unsigned short v21 (unsigned short, unsigned int, signed int);
unsigned short (*v22) (unsigned short, unsigned int, signed int) = v21;
extern unsigned char v23 (unsigned int, unsigned int);
extern unsigned char (*v24) (unsigned int, unsigned int);
extern signed char v25 (unsigned int, unsigned short, signed int, signed short);
extern signed char (*v26) (unsigned int, unsigned short, signed int, signed short);
extern signed char v27 (unsigned short, signed short, unsigned char);
extern signed char (*v28) (unsigned short, signed short, unsigned char);
extern unsigned short v29 (unsigned short);
extern unsigned short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 2;
unsigned short v32 = 1;
signed char v31 = 3;

unsigned short v21 (unsigned short v34, unsigned int v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 4;
signed char v38 = 0;
unsigned int v37 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (void)
{
{
for (;;) {
signed short v42 = 3;
unsigned int v41 = 5U;
unsigned char v40 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (signed short v43, unsigned short v44, signed short v45)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed int v48 = -4;
signed short v47 = 1;
unsigned int v46 = 7U;
trace++;
switch (trace)
{
case 3: 
return v47;
case 11: 
return 3;
default: abort ();
}
}
}
}

unsigned short v13 (unsigned short v49, unsigned char v50, signed char v51)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed int v54 = -3;
unsigned int v53 = 5U;
unsigned short v52 = 1;
trace++;
switch (trace)
{
case 6: 
return v52;
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
signed int v57;
signed short v58;
signed short v59;
signed short v60;
v57 = 0 + 1;
v58 = -3 - 2;
v59 = 1 + -2;
v60 = v1 (v57, v58, v59);
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

#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned char, unsigned int, unsigned char);
extern signed int (*v2) (unsigned char, unsigned int, unsigned char);
extern unsigned int v3 (unsigned char, signed int, unsigned int);
extern unsigned int (*v4) (unsigned char, signed int, unsigned int);
unsigned short v5 (unsigned char, unsigned char);
unsigned short (*v6) (unsigned char, unsigned char) = v5;
extern signed int v7 (signed int);
extern signed int (*v8) (signed int);
unsigned char v9 (unsigned char);
unsigned char (*v10) (unsigned char) = v9;
extern signed int v11 (signed char, signed char, signed int);
extern signed int (*v12) (signed char, signed char, signed int);
void v13 (signed char, unsigned short, signed char);
void (*v14) (signed char, unsigned short, signed char) = v13;
extern signed char v15 (unsigned short, signed char);
extern signed char (*v16) (unsigned short, signed char);
extern void v17 (unsigned int, signed short, signed int);
extern void (*v18) (unsigned int, signed short, signed int);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern void v21 (signed short, signed char, unsigned int, signed short);
extern void (*v22) (signed short, signed char, unsigned int, signed short);
signed int v23 (signed short, signed char, unsigned char);
signed int (*v24) (signed short, signed char, unsigned char) = v23;
extern signed short v27 (unsigned int, unsigned char);
extern signed short (*v28) (unsigned int, unsigned char);
extern signed int v29 (unsigned short, unsigned int);
extern signed int (*v30) (unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -2;
unsigned short v32 = 5;
signed int v31 = -3;

signed int v23 (signed short v34, signed char v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = 1;
unsigned int v38 = 5U;
signed int v37 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed char v40, unsigned short v41, signed char v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned int v45 = 7U;
signed short v44 = 3;
signed char v43 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned char v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
unsigned char v49 = 1;
signed int v48 = 0;
unsigned int v47 = 7U;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v50;
v50 = v19 ();
history[history_index++] = (int)v50;
}
break;
case 5: 
{
unsigned short v51;
v51 = v19 ();
history[history_index++] = (int)v51;
}
break;
case 7: 
return v49;
default: abort ();
}
}
}
}

unsigned short v5 (unsigned char v52, unsigned char v53)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed int v56 = 1;
signed short v55 = -3;
unsigned char v54 = 2;
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
unsigned char v59;
unsigned int v60;
unsigned char v61;
signed int v62;
v59 = 0 - 3;
v60 = 6U - 0U;
v61 = 6 - 3;
v62 = v1 (v59, v60, v61);
history[history_index++] = (int)v62;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

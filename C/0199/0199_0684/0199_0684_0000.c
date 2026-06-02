#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed short, unsigned short);
extern unsigned char (*v2) (unsigned short, signed short, unsigned short);
extern signed short v3 (signed short, unsigned int, unsigned short, signed char);
extern signed short (*v4) (signed short, unsigned int, unsigned short, signed char);
extern unsigned short v5 (signed int);
extern unsigned short (*v6) (signed int);
extern signed char v7 (unsigned char, signed int, signed short, signed char);
extern signed char (*v8) (unsigned char, signed int, signed short, signed char);
extern signed short v9 (signed short, unsigned int, unsigned int, unsigned int);
extern signed short (*v10) (signed short, unsigned int, unsigned int, unsigned int);
signed char v11 (unsigned short, unsigned int);
signed char (*v12) (unsigned short, unsigned int) = v11;
extern unsigned short v13 (signed int);
extern unsigned short (*v14) (signed int);
extern unsigned short v15 (signed short, unsigned int, unsigned char);
extern unsigned short (*v16) (signed short, unsigned int, unsigned char);
extern unsigned char v17 (signed char);
extern unsigned char (*v18) (signed char);
extern unsigned int v19 (unsigned short, unsigned int, signed short);
extern unsigned int (*v20) (unsigned short, unsigned int, signed short);
signed char v21 (unsigned int, signed short, signed short, signed char);
signed char (*v22) (unsigned int, signed short, signed short, signed char) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern void v25 (void);
extern void (*v26) (void);
extern signed short v27 (signed int);
extern signed short (*v28) (signed int);
signed char v29 (unsigned char, unsigned int);
signed char (*v30) (unsigned char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -4;
signed int v32 = 0;
unsigned short v31 = 4;

signed char v29 (unsigned char v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned char v38 = 0;
unsigned char v37 = 7;
unsigned char v36 = 4;
trace++;
switch (trace)
{
case 4: 
return 1;
default: abort ();
}
}
}
}

signed char v21 (unsigned int v39, signed short v40, signed short v41, signed char v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned short v45 = 3;
unsigned char v44 = 0;
signed int v43 = 3;
trace++;
switch (trace)
{
case 7: 
return -1;
case 11: 
return -1;
default: abort ();
}
}
}
}

signed char v11 (unsigned short v46, unsigned int v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed char v50 = 3;
signed short v49 = -2;
unsigned short v48 = 1;
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
unsigned short v53;
signed short v54;
unsigned short v55;
unsigned char v56;
v53 = v31 + 1;
v54 = 3 - -1;
v55 = v31 + v31;
v56 = v1 (v53, v54, v55);
history[history_index++] = (int)v56;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned int, signed short);
extern signed char (*v2) (unsigned int, signed short);
extern unsigned short v3 (unsigned short, signed short, unsigned short, unsigned short);
extern unsigned short (*v4) (unsigned short, signed short, unsigned short, unsigned short);
extern unsigned char v5 (signed int);
extern unsigned char (*v6) (signed int);
extern signed int v7 (unsigned int, unsigned int);
extern signed int (*v8) (unsigned int, unsigned int);
extern void v9 (signed char, signed short, signed short);
extern void (*v10) (signed char, signed short, signed short);
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed short v15 (unsigned char, signed char, unsigned short, signed short);
extern signed short (*v16) (unsigned char, signed char, unsigned short, signed short);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned short v19 (signed int);
extern unsigned short (*v20) (signed int);
signed short v21 (signed int);
signed short (*v22) (signed int) = v21;
extern unsigned short v23 (unsigned short, signed short);
extern unsigned short (*v24) (unsigned short, signed short);
extern signed int v25 (unsigned char);
extern signed int (*v26) (unsigned char);
extern void v27 (signed int, signed int, signed int, signed int);
extern void (*v28) (signed int, signed int, signed int, signed int);
extern unsigned int v29 (unsigned int);
extern unsigned int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 2;
unsigned int v32 = 3U;
unsigned char v31 = 3;

signed short v21 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = -2;
signed char v36 = 0;
signed int v35 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (void)
{
{
for (;;) {
signed char v40 = 3;
unsigned int v39 = 4U;
unsigned int v38 = 1U;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v41;
signed char v42;
unsigned short v43;
signed short v44;
signed short v45;
v41 = 0 + 5;
v42 = 2 - -2;
v43 = 4 - 0;
v44 = 3 + 0;
v45 = v15 (v41, v42, v43, v44);
history[history_index++] = (int)v45;
}
break;
case 7: 
{
unsigned char v46;
signed char v47;
unsigned short v48;
signed short v49;
signed short v50;
v46 = 4 + 5;
v47 = 0 + v40;
v48 = 3 + 7;
v49 = 0 + 0;
v50 = v15 (v46, v47, v48, v49);
history[history_index++] = (int)v50;
}
break;
case 9: 
return 6U;
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
unsigned int v53;
signed short v54;
signed char v55;
v53 = v32 + 0U;
v54 = 3 + 0;
v55 = v1 (v53, v54);
history[history_index++] = (int)v55;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed char, signed int, signed char);
extern unsigned short (*v2) (signed char, signed int, signed char);
extern signed int v3 (signed int, signed char);
extern signed int (*v4) (signed int, signed char);
extern unsigned short v5 (signed char, signed char, signed char);
extern unsigned short (*v6) (signed char, signed char, signed char);
unsigned char v7 (unsigned int, unsigned short, signed int);
unsigned char (*v8) (unsigned int, unsigned short, signed int) = v7;
extern unsigned short v9 (unsigned short, unsigned int, signed int);
extern unsigned short (*v10) (unsigned short, unsigned int, signed int);
extern unsigned int v11 (signed int, unsigned short);
extern unsigned int (*v12) (signed int, unsigned short);
extern signed char v13 (unsigned short, unsigned short, unsigned short, signed char);
extern signed char (*v14) (unsigned short, unsigned short, unsigned short, signed char);
extern unsigned char v15 (signed short, signed int, signed int);
extern unsigned char (*v16) (signed short, signed int, signed int);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
unsigned char v19 (unsigned short, unsigned short, signed char);
unsigned char (*v20) (unsigned short, unsigned short, signed char) = v19;
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
extern signed int v23 (signed short);
extern signed int (*v24) (signed short);
extern signed char v25 (signed char, unsigned char);
extern signed char (*v26) (signed char, unsigned char);
signed int v27 (unsigned char);
signed int (*v28) (unsigned char) = v27;
extern signed short v29 (unsigned int, signed short, unsigned short, signed short);
extern signed short (*v30) (unsigned int, signed short, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 1;
unsigned int v32 = 0U;
unsigned int v31 = 4U;

signed int v27 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = -1;
signed short v36 = 0;
signed short v35 = 3;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v38;
unsigned int v39;
signed int v40;
unsigned short v41;
v38 = 7 - 4;
v39 = 6U + 5U;
v40 = v37 - 0;
v41 = v9 (v38, v39, v40);
history[history_index++] = (int)v41;
}
break;
case 10: 
return 3;
case 13: 
return v37;
default: abort ();
}
}
}
}

unsigned char v19 (unsigned short v42, unsigned short v43, signed char v44)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned char v47 = 2;
unsigned short v46 = 4;
signed int v45 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned int v48, unsigned short v49, signed int v50)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
unsigned short v53 = 1;
signed char v52 = -4;
signed short v51 = -1;
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
signed char v56;
signed int v57;
signed char v58;
unsigned short v59;
v56 = 1 - -1;
v57 = 2 + 0;
v58 = 0 + -4;
v59 = v1 (v56, v57, v58);
history[history_index++] = (int)v59;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

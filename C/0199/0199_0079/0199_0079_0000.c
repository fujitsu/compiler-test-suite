#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed short, unsigned char);
extern unsigned int (*v2) (signed short, unsigned char);
extern signed char v5 (unsigned short, signed int);
extern signed char (*v6) (unsigned short, signed int);
extern unsigned short v7 (unsigned int, unsigned short);
extern unsigned short (*v8) (unsigned int, unsigned short);
extern unsigned char v9 (unsigned int, signed int, unsigned short);
extern unsigned char (*v10) (unsigned int, signed int, unsigned short);
extern signed char v11 (void);
extern signed char (*v12) (void);
signed short v13 (signed char, unsigned short, signed char);
signed short (*v14) (signed char, unsigned short, signed char) = v13;
extern unsigned short v15 (signed short, unsigned short);
extern unsigned short (*v16) (signed short, unsigned short);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed short v19 (signed int, signed short);
extern signed short (*v20) (signed int, signed short);
extern signed short v21 (unsigned char);
extern signed short (*v22) (unsigned char);
unsigned char v23 (signed short, unsigned short, unsigned char);
unsigned char (*v24) (signed short, unsigned short, unsigned char) = v23;
extern signed int v25 (unsigned char, signed short);
extern signed int (*v26) (unsigned char, signed short);
unsigned int v27 (unsigned char, unsigned short, unsigned int, unsigned char);
unsigned int (*v28) (unsigned char, unsigned short, unsigned int, unsigned char) = v27;
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 1;
signed int v32 = -4;
signed short v31 = -4;

unsigned int v27 (unsigned char v34, unsigned short v35, unsigned int v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = 1;
unsigned short v39 = 4;
signed char v38 = -4;
trace++;
switch (trace)
{
case 9: 
{
unsigned int v41;
signed int v42;
unsigned short v43;
unsigned char v44;
v41 = 7U + 2U;
v42 = 1 + -3;
v43 = 3 + v39;
v44 = v9 (v41, v42, v43);
history[history_index++] = (int)v44;
}
break;
case 13: 
return 3U;
default: abort ();
}
}
}
}

unsigned char v23 (signed short v45, unsigned short v46, unsigned char v47)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned int v50 = 1U;
unsigned int v49 = 7U;
signed short v48 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed char v51, unsigned short v52, signed char v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned int v56 = 7U;
signed int v55 = -4;
unsigned int v54 = 4U;
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
signed short v59;
unsigned char v60;
unsigned int v61;
v59 = -3 + -2;
v60 = 2 - 3;
v61 = v1 (v59, v60);
history[history_index++] = (int)v61;
}
} while (trace < 15);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

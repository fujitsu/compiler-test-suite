#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned short, unsigned int, unsigned short);
extern signed int (*v2) (unsigned short, unsigned int, unsigned short);
extern signed int v3 (signed int);
extern signed int (*v4) (signed int);
extern unsigned int v5 (signed short, unsigned int);
extern unsigned int (*v6) (signed short, unsigned int);
extern signed int v7 (unsigned int);
extern signed int (*v8) (unsigned int);
void v9 (signed char, unsigned int, signed char);
void (*v10) (signed char, unsigned int, signed char) = v9;
extern unsigned short v11 (unsigned char);
extern unsigned short (*v12) (unsigned char);
extern unsigned int v13 (unsigned short, signed char);
extern unsigned int (*v14) (unsigned short, signed char);
extern signed char v15 (signed short, unsigned int, signed int, signed char);
extern signed char (*v16) (signed short, unsigned int, signed int, signed char);
extern void v17 (void);
extern void (*v18) (void);
unsigned char v19 (signed int, unsigned short, signed short);
unsigned char (*v20) (signed int, unsigned short, signed short) = v19;
extern signed char v21 (unsigned short);
extern signed char (*v22) (unsigned short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned short v25 (signed int, unsigned int, signed int);
extern unsigned short (*v26) (signed int, unsigned int, signed int);
extern unsigned char v27 (signed int, signed short);
extern unsigned char (*v28) (signed int, signed short);
extern signed char v29 (unsigned int, unsigned char, signed char, unsigned int);
extern signed char (*v30) (unsigned int, unsigned char, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
signed int v32 = -4;
signed char v31 = 3;

unsigned char v19 (signed int v34, unsigned short v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = 3;
unsigned char v38 = 6;
unsigned int v37 = 1U;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v40;
unsigned char v41;
signed char v42;
unsigned int v43;
signed char v44;
v40 = v37 - v37;
v41 = v38 + v38;
v42 = -1 - -3;
v43 = v37 - 4U;
v44 = v29 (v40, v41, v42, v43);
history[history_index++] = (int)v44;
}
break;
case 4: 
{
unsigned short v45;
signed char v46;
v45 = v35 + v35;
v46 = v21 (v45);
history[history_index++] = (int)v46;
}
break;
case 6: 
{
unsigned int v47;
unsigned char v48;
signed char v49;
unsigned int v50;
signed char v51;
v47 = v37 - v37;
v48 = v38 + 6;
v49 = v39 - v39;
v50 = v37 + 2U;
v51 = v29 (v47, v48, v49, v50);
history[history_index++] = (int)v51;
}
break;
case 8: 
{
unsigned short v52;
signed char v53;
v52 = v35 + v35;
v53 = v21 (v52);
history[history_index++] = (int)v53;
}
break;
case 12: 
return v38;
default: abort ();
}
}
}
}

void v9 (signed char v54, unsigned int v55, signed char v56)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
signed short v59 = 0;
signed char v58 = 0;
unsigned int v57 = 2U;
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
unsigned short v62;
unsigned int v63;
unsigned short v64;
signed int v65;
v62 = 3 + 4;
v63 = 1U - 5U;
v64 = 2 + 0;
v65 = v1 (v62, v63, v64);
history[history_index++] = (int)v65;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

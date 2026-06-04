#include <stdio.h>
#include <stdlib.h>
static signed short v1 (unsigned short);
static signed short (*v2) (unsigned short) = v1;
extern signed short v3 (signed int, signed short, unsigned char, signed short);
extern signed short (*v4) (signed int, signed short, unsigned char, signed short);
signed int v5 (unsigned int, signed int, signed int);
signed int (*v6) (unsigned int, signed int, signed int) = v5;
extern void v7 (signed char, signed int);
extern void (*v8) (signed char, signed int);
extern unsigned short v9 (signed char, signed char, unsigned char);
extern unsigned short (*v10) (signed char, signed char, unsigned char);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned char v13 (unsigned short, signed int);
extern unsigned char (*v14) (unsigned short, signed int);
extern signed int v15 (unsigned short, signed short);
extern signed int (*v16) (unsigned short, signed short);
extern unsigned int v17 (unsigned short);
extern unsigned int (*v18) (unsigned short);
void v19 (void);
void (*v20) (void) = v19;
extern signed short v21 (unsigned char, unsigned int);
extern signed short (*v22) (unsigned char, unsigned int);
extern signed char v23 (unsigned int, unsigned int);
extern signed char (*v24) (unsigned int, unsigned int);
extern unsigned char v25 (unsigned char);
extern unsigned char (*v26) (unsigned char);
extern unsigned short v27 (signed int, unsigned int, unsigned int);
extern unsigned short (*v28) (signed int, unsigned int, unsigned int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 1;
signed char v32 = -1;
unsigned int v31 = 5U;

void v19 (void)
{
{
for (;;) {
unsigned char v36 = 6;
unsigned int v35 = 0U;
unsigned short v34 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned int v37, signed int v38, signed int v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned int v42 = 4U;
signed char v41 = 0;
unsigned int v40 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v1 (unsigned short v43)
{
history[history_index++] = (int)v43;
{
for (;;) {
unsigned char v46 = 1;
signed int v45 = 0;
signed int v44 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v47;
unsigned int v48;
signed char v49;
v47 = 3U - 1U;
v48 = 0U - 3U;
v49 = v23 (v47, v48);
history[history_index++] = (int)v49;
}
break;
case 2: 
{
unsigned short v50;
unsigned int v51;
v50 = v43 + 5;
v51 = v17 (v50);
history[history_index++] = (int)v51;
}
break;
case 4: 
{
signed char v52;
signed int v53;
v52 = 1 + 3;
v53 = v44 - -4;
v7 (v52, v53);
}
break;
case 12: 
return 0;
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
unsigned short v56;
signed short v57;
v56 = 3 + 5;
v57 = v1 (v56);
history[history_index++] = (int)v57;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
